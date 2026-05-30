import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'package:draconia_quiz/data/questions.dart';
import 'package:draconia_quiz/data/scoring.dart';
import 'package:draconia_quiz/models/dragon_type.dart';

/// Ein zufälliger Durchlauf: pro Frage eine gleichverteilt gewählte Antwort,
/// Punkte aufsummiert.
Map<DragonSubtype, int> _randomRun(Random rng) {
  final scores = <DragonSubtype, int>{};
  for (final question in quizQuestions) {
    final answer = question.answers[rng.nextInt(question.answers.length)];
    answer.scores.forEach((subtype, points) {
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

  test('jedes der 21 Ergebnisse ist erreichbar (Monte-Carlo, fester Seed)', () {
    final rng = Random(7);
    final seen = <DragonSubtype>{};
    for (var i = 0; i < 20000; i++) {
      seen.addAll(rankedWinners(_randomRun(rng)));
    }
    expect(
      seen.length,
      DragonSubtype.values.length,
      reason: 'Nie erreicht: '
          '${DragonSubtype.values.toSet().difference(seen)}',
    );
  });

  test('Verteilung ist annähernd fair (kein Drache dominiert)', () {
    final rng = Random(42);
    final counts = <DragonSubtype, int>{};
    const runs = 40000;
    for (var i = 0; i < runs; i++) {
      final winners = rankedWinners(_randomRun(rng));
      // deterministische Gleichstand-Auflösung für stabile Zählung
      final w = winners.reduce((a, b) => a.index <= b.index ? a : b);
      counts[w] = (counts[w] ?? 0) + 1;
    }
    final ideal = runs / DragonSubtype.values.length;
    counts.forEach((subtype, c) {
      // großzügige Grenze: kein Drache über 3x oder unter 1/3 des Ideals
      expect(c, lessThan(ideal * 3),
          reason: '$subtype kommt zu häufig vor (${c / runs * 100}%)');
      expect(c, greaterThan(ideal / 3),
          reason: '$subtype kommt zu selten vor (${c / runs * 100}%)');
    });
  });

  test('computeResult liefert immer ein gültiges Ergebnis', () {
    expect(DragonSubtype.values, contains(computeResult(_randomRun(Random(1)))));
  });
}
