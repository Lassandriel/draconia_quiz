import '../models/dragon_type.dart';
import 'questions.dart';

/// Maximal erreichbarer Score pro Subtyp über alle Fragen:
/// je Frage die bestmögliche Antwort für diesen Subtyp, aufsummiert.
/// Einmal lazy berechnet (Daten sind `const`, ändern sich zur Laufzeit nie).
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

/// Subtypen mit dem höchsten *normalisierten* Score (Anteil am jeweils
/// maximal erreichbaren Score). Normalisierung sorgt dafür, dass jedes
/// Ergebnis fair erreichbar ist und nicht „High-Ceiling"-Drachen bevorzugt
/// werden. Bei Gleichstand enthält die Liste mehrere Einträge.
List<DragonSubtype> rankedWinners(Map<DragonSubtype, int> scores) {
  const epsilon = 1e-9;
  double ratioOf(DragonSubtype s) {
    final max = maxPossibleScores[s] ?? 0;
    if (max == 0) return 0;
    return (scores[s] ?? 0) / max;
  }

  var bestRatio = -1.0;
  final winners = <DragonSubtype>[];
  for (final subtype in scores.keys) {
    final ratio = ratioOf(subtype);
    if (ratio > bestRatio + epsilon) {
      bestRatio = ratio;
      winners
        ..clear()
        ..add(subtype);
    } else if ((ratio - bestRatio).abs() <= epsilon) {
      winners.add(subtype);
    }
  }
  return winners;
}

/// Bestimmt das Endergebnis aus den gesammelten Rohpunkten. Gleichstände
/// werden zufällig aufgelöst. Fällt auf den Feuer-Großdrachen zurück, falls
/// (theoretisch) keine Punkte vergeben wurden.
DragonSubtype computeResult(Map<DragonSubtype, int> scores) {
  if (scores.isEmpty) return DragonSubtype.grossdracheFeuer;
  final winners = rankedWinners(scores)..shuffle();
  return winners.first;
}
