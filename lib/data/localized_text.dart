import 'package:flutter/widgets.dart';

/// Ein Text, der in mehreren Sprachen vorliegt, abgelegt nach Sprachcode
/// (z. B. `'de'`, `'en'`, `'es'`).
///
/// So bleibt der gesamte Quiz-Inhalt (Fragen, Antworten, Drachen-Ergebnisse)
/// mehrsprachig, ohne pro Sprache eigene Felder im Modell zu brauchen. Eine
/// neue Sprache ist damit reine Datenpflege – kein Code-Umbau mehr.
typedef LocalizedText = Map<String, String>;

extension LocalizedTextResolve on LocalizedText {
  /// Liefert den Text für [locale]. Fehlt die Sprache, wird auf Englisch,
  /// dann Deutsch und zuletzt auf den ersten vorhandenen Eintrag
  /// zurückgegriffen – die UI zeigt also nie eine Lücke.
  String resolve(Locale locale) {
    return this[locale.languageCode] ??
        this['en'] ??
        this['de'] ??
        values.first;
  }
}
