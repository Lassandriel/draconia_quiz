import 'package:flutter_test/flutter_test.dart';

import 'package:draconia_quiz/data/questions.dart';
import 'package:draconia_quiz/data/scoring.dart';
import 'package:draconia_quiz/models/dragon_type.dart';
import 'package:draconia_quiz/models/quiz_question.dart';

/// Simuliert einen Durchlauf, bei dem für jede Frage die Antwort gewählt wird,
/// die [target] die meisten Punkte gibt, und summiert alle Punkte auf.
Map<DragonSubtype, int> _runFavoring(DragonSubtype target) {
  final scores = <DragonSubtype, int>{};
  for (final question in quizQuestions) {
    QuizAnswer? best;
    var bestPoints = -1;
    for (final answer in question.answers) {
      final points = answer.scores[target] ?? 0;
      if (points > bestPoints) {
        bestPoints = points;
        best = answer;
      }
    }
    best!.scores.forEach((subtype, points) {
      scores[subtype] = (scores[subtype] ?? 0) + points;
    });
  }
  return scores;
}

void main() {
  test('jeder Subtyp hat einen positiven maximal erreichbaren Score', () {
    for (final subtype in DragonSubtype.values) {
      expect(
        maxPossibleScores[subtype] ?? 0,
        greaterThan(0),
        reason: '$subtype taucht in keiner Antwort auf',
      );
    }
  });

  test('jedes Ergebnis ist erreichbar (Fairness durch Normalisierung)', () {
    for (final subtype in DragonSubtype.values) {
      final scores = _runFavoring(subtype);
      expect(
        rankedWinners(scores),
        contains(subtype),
        reason:
            '$subtype kann selbst bei optimaler Beantwortung nicht gewinnen',
      );
    }
  });

  test('computeResult liefert immer ein gültiges Ergebnis', () {
    final scores = _runFavoring(DragonSubtype.wyvernFrost);
    expect(DragonSubtype.values, contains(computeResult(scores)));
  });
}
