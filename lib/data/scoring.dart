import 'dart:math';

import '../models/dragon_type.dart';
import 'questions.dart';

/// Seltenheitsstufen der Drachen. Muss zu den `rarityDe`-Texten in
/// results.dart passen (per Test abgesichert: [[scoring]]).
enum DragonRarity { common, rare, veryRare, legendary }

const Map<DragonSubtype, DragonRarity> dragonRarity = {
  // Häufig
  DragonSubtype.grossdracheErde: DragonRarity.common,
  DragonSubtype.grossdracheWind: DragonRarity.common,
  DragonSubtype.grossdracheFeuer: DragonRarity.common,
  // Sehr selten
  DragonSubtype.grossdracheSonne: DragonRarity.veryRare,
  DragonSubtype.lungFeuer: DragonRarity.veryRare,
  DragonSubtype.lungLicht: DragonRarity.veryRare,
  DragonSubtype.amphithereTraum: DragonRarity.veryRare,
  DragonSubtype.amphithereSonne: DragonRarity.veryRare,
  DragonSubtype.seraphAether: DragonRarity.veryRare,
  DragonSubtype.faeWald: DragonRarity.veryRare,
  // Legendär
  DragonSubtype.lungFeuerLicht: DragonRarity.legendary,
  // Selten (alle übrigen)
  DragonSubtype.grossdracheGezeitenTraum: DragonRarity.rare,
  DragonSubtype.grossdracheKristall: DragonRarity.rare,
  DragonSubtype.wyvernSturm: DragonRarity.rare,
  DragonSubtype.wyvernFrost: DragonRarity.rare,
  DragonSubtype.lindwurmMagma: DragonRarity.rare,
  DragonSubtype.lindwurmSumpf: DragonRarity.rare,
  DragonSubtype.leviathanGezeiten: DragonRarity.rare,
  DragonSubtype.leviathanMagma: DragonRarity.rare,
  DragonSubtype.seraphGewitter: DragonRarity.rare,
  DragonSubtype.faeStadt: DragonRarity.rare,
};

/// Schwelle (in z-Score-Einheiten), die ein Drache je nach Seltenheit
/// zusätzlich überwinden muss, um zu gewinnen. Seltenere Drachen verlangen
/// einen stärkeren Match — dadurch folgt die Ergebnis-Häufigkeit der Lore
/// statt gleichverteilt zu sein. Kalibriert auf einen „subtilen" Trend
/// (häufig ~8 %, selten ~5 %, sehr selten ~3 %, legendär ~2 %).
const Map<DragonRarity, double> _rarityPenalty = {
  DragonRarity.common: 0.0,
  DragonRarity.rare: 0.25,
  DragonRarity.veryRare: 0.55,
  DragonRarity.legendary: 0.8,
};

/// Maximal erreichbarer Score pro Subtyp über alle Fragen (bestmögliche
/// Antwort je Frage, aufsummiert). Wird als Daten-Sanity-Check genutzt.
final Map<DragonSubtype, int> maxPossibleScores = _computeMaxPossible();

Map<DragonSubtype, int> _computeMaxPossible() {
  final result = <DragonSubtype, int>{};
  for (final question in quizQuestions) {
    final bestPerSubtype = <DragonSubtype, int>{};
    for (final answer in question.answers) {
      answer.scores.forEach((subtype, points) {
        final current = bestPerSubtype[subtype] ?? 0;
        if (points > current) bestPerSubtype[subtype] = points;
      });
    }
    bestPerSubtype.forEach((subtype, points) {
      result[subtype] = (result[subtype] ?? 0) + points;
    });
  }
  return result;
}

/// Erwartungswert und Standardabweichung des Gesamt-Scores jedes Subtyps
/// unter gleichverteilten Zufallsantworten — analytisch aus den Fragedaten.
///
/// Damit wird das Ergebnis als *z-Score* bestimmt: „Wie viele Standard-
/// abweichungen über dem Zufalls-Erwartungswert liegt der Score dieses
/// Drachen?" Das macht alle Drachen vergleichbar, unabhängig davon, wie
/// hoch ihr theoretisches Maximum ist oder in wie vielen Antworten sie
/// vorkommen. Ergebnis: jeder Drache ist annähernd gleich wahrscheinlich.
class _ScoreStats {
  final Map<DragonSubtype, double> mean;
  final Map<DragonSubtype, double> std;
  const _ScoreStats(this.mean, this.std);
}

final _ScoreStats _stats = _computeStats();

_ScoreStats _computeStats() {
  final mean = <DragonSubtype, double>{};
  final variance = <DragonSubtype, double>{};

  final allSubtypes = <DragonSubtype>{};
  for (final question in quizQuestions) {
    for (final answer in question.answers) {
      allSubtypes.addAll(answer.scores.keys);
    }
  }

  for (final subtype in allSubtypes) {
    var m = 0.0;
    var v = 0.0;
    for (final question in quizQuestions) {
      final n = question.answers.length;
      var sum = 0.0;
      var sumSq = 0.0;
      for (final answer in question.answers) {
        final p = (answer.scores[subtype] ?? 0).toDouble();
        sum += p;
        sumSq += p * p;
      }
      final qMean = sum / n;
      m += qMean;
      v += sumSq / n - qMean * qMean; // Varianz dieser Frage (Fragen unabhängig)
    }
    mean[subtype] = m;
    variance[subtype] = v;
  }

  final std = <DragonSubtype, double>{
    for (final s in allSubtypes) s: sqrt(variance[s]!),
  };
  return _ScoreStats(mean, std);
}

/// Subtypen mit dem höchsten rarity-gewichteten z-Score. Vom rohen z-Score
/// wird je nach Seltenheit eine Schwelle abgezogen ([_rarityPenalty]), sodass
/// seltene Drachen einen stärkeren Match verlangen. Bei Gleichstand mehrere
/// Einträge.
List<DragonSubtype> rankedWinners(Map<DragonSubtype, int> scores) {
  const epsilon = 1e-9;
  var bestZ = double.negativeInfinity;
  final winners = <DragonSubtype>[];

  _stats.mean.forEach((subtype, mu) {
    final sigma = _stats.std[subtype]!;
    if (sigma == 0) return; // konstanter Score → nicht aussagekräftig
    final penalty = _rarityPenalty[dragonRarity[subtype]!]!;
    final z = ((scores[subtype] ?? 0) - mu) / sigma - penalty;
    if (z > bestZ + epsilon) {
      bestZ = z;
      winners
        ..clear()
        ..add(subtype);
    } else if ((z - bestZ).abs() <= epsilon) {
      winners.add(subtype);
    }
  });

  return winners;
}

/// Bestimmt das Endergebnis aus den gesammelten Rohpunkten. Gleichstände
/// werden zufällig aufgelöst. Fällt auf den Feuer-Großdrachen zurück, falls
/// (theoretisch) gar keine Punkte vergeben wurden.
DragonSubtype computeResult(Map<DragonSubtype, int> scores) {
  if (scores.isEmpty) return DragonSubtype.grossdracheFeuer;
  final winners = rankedWinners(scores);
  if (winners.isEmpty) return DragonSubtype.grossdracheFeuer;
  return (winners..shuffle()).first;
}
