import 'package:flutter_test/flutter_test.dart';

import 'package:draconia_quiz/data/localized_text.dart';
import 'package:draconia_quiz/data/questions.dart';
import 'package:draconia_quiz/data/results.dart';
import 'package:draconia_quiz/services/settings_service.dart';

/// Stellt sicher, dass jeder übersetzbare Inhalt für *jede* unterstützte
/// Sprache vorhanden und nicht leer ist. Wird eine Sprache zu kSupportedLocales
/// hinzugefügt, schlägt dieser Test fehl, bis alle Texte gepflegt sind.
void main() {
  final codes = kSupportedLocales.map((l) => l.languageCode).toList();

  void expectComplete(LocalizedText text, String label) {
    for (final code in codes) {
      expect(
        text.containsKey(code),
        isTrue,
        reason: '$label fehlt für "$code" (en: "${text['en']}")',
      );
      expect(
        text[code]?.trim().isNotEmpty ?? false,
        isTrue,
        reason: '$label ist leer für "$code" (en: "${text['en']}")',
      );
    }
  }

  test('jede Frage und Antwort ist in allen Sprachen vorhanden', () {
    for (final q in quizQuestions) {
      expectComplete(q.text, 'Frage');
      for (final a in q.answers) {
        expectComplete(a.text, 'Antwort');
      }
    }
  });

  test('jedes Drachen-Ergebnis ist in allen Sprachen vorhanden', () {
    for (final r in dragonResults.values) {
      expectComplete(r.species, 'species');
      expectComplete(r.name, 'name');
      expectComplete(r.element, 'element');
      expectComplete(r.description, 'description');
      expectComplete(r.rarity, 'rarity');
    }
  });

  test('Doppel-Elemente lassen sich in allen Sprachen in 2 Teile zerlegen', () {
    for (final r in dragonResults.values) {
      // „Dual" wird an der englischen Referenz erkannt (dort immer " & ").
      final isDual = r.element['en']!.contains(' & ');
      if (!isDual) continue;
      for (final code in codes) {
        final parts = splitElementParts(r.element[code]!, code);
        expect(
          parts.length,
          2,
          reason:
              'Element "${r.element[code]}" ($code) ergibt ${parts.length} '
              'statt 2 Teile – Trenner für "$code" prüfen',
        );
        for (final p in parts) {
          expect(p.trim(), isNotEmpty, reason: 'leerer Teil bei $code');
        }
      }
    }
  });
}
