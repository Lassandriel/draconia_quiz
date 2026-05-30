import 'dart:math';

import '../models/dragon_type.dart';
import 'questions.dart';

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

/// Subtypen mit dem höchsten z-Score. Bei Gleichstand mehrere Einträge.
List<DragonSubtype> rankedWinners(Map<DragonSubtype, int> scores) {
  const epsilon = 1e-9;
  var bestZ = double.negativeInfinity;
  final winners = <DragonSubtype>[];

  _stats.mean.forEach((subtype, mu) {
    final sigma = _stats.std[subtype]!;
    if (sigma == 0) return; // konstanter Score → nicht aussagekräftig
    final z = ((scores[subtype] ?? 0) - mu) / sigma;
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
