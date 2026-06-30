import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'package:draconia_quiz/data/questions.dart';
import 'package:draconia_quiz/data/results.dart';
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

  test('seltene Drachen kommen seltener vor (Rarity-Ordering)', () {
    final rng = Random(42);
    final counts = <DragonSubtype, int>{};
    const runs = 60000;
    for (var i = 0; i < runs; i++) {
      final winners = rankedWinners(_randomRun(rng));
      // deterministische Gleichstand-Auflösung für stabile Zählung
      final w = winners.reduce((a, b) => a.index <= b.index ? a : b);
      counts[w] = (counts[w] ?? 0) + 1;
    }

    double avgOf(DragonRarity tier) {
      final list = [
        for (final s in DragonSubtype.values)
          if (dragonRarity[s] == tier) (counts[s] ?? 0) / runs
      ];
      return list.reduce((a, b) => a + b) / list.length;
    }

    final common = avgOf(DragonRarity.common);
    final rare = avgOf(DragonRarity.rare);
    final veryRare = avgOf(DragonRarity.veryRare);
    final legendary = avgOf(DragonRarity.legendary);

    // Monotone Stufung: häufig > selten > sehr selten > legendär
    expect(common, greaterThan(rare), reason: 'häufig $common vs selten $rare');
    expect(rare, greaterThan(veryRare),
        reason: 'selten $rare vs sehr selten $veryRare');
    expect(veryRare, greaterThan(legendary),
        reason: 'sehr selten $veryRare vs legendär $legendary');
    // Trotzdem bleibt selbst der Legendäre erreichbar (nicht ~0).
    expect(legendary, greaterThan(0.005),
        reason: 'legendär zu selten: $legendary');
  });

  test('dragonRarity stimmt mit den deutschen rarity-Texten in results.dart überein', () {
    const fromText = {
      'Häufig': DragonRarity.common,
      'Selten': DragonRarity.rare,
      'Sehr selten': DragonRarity.veryRare,
      'Legendär': DragonRarity.legendary,
    };
    for (final subtype in DragonSubtype.values) {
      final rarityDe = dragonResults[subtype]!.rarity['de'];
      final expected = fromText[rarityDe];
      expect(
        dragonRarity[subtype],
        expected,
        reason: '$subtype: Tier weicht von rarity[de] "$rarityDe" ab',
      );
    }
  });

  test('computeResult liefert immer ein gültiges Ergebnis', () {
    expect(DragonSubtype.values, contains(computeResult(_randomRun(Random(1)))));
  });
}
