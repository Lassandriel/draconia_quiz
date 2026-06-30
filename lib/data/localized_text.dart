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

/// Verbindungswort zwischen den beiden Teilen eines Doppel-Elements
/// (z. B. „Natur & Tarnung") je Sprache. Damit lassen sich Doppel-Elemente
/// in einzelne Badges zerlegen – sprachunabhängig.
const Map<String, String> _elementSeparators = {
  'de': ' & ',
  'en': ' & ',
  'es': ' y ',
  'fr': ' et ',
  'pt': ' e ',
  'ru': ' и ',
  'ja': 'と',
  'zh': '与',
  'ar': ' و',
};

/// Zerlegt einen bereits lokalisierten Elementnamen in seine Teile.
/// Einfache Elemente ergeben eine einelementige Liste; Doppel-Elemente zwei.
/// Unbekannte Sprachen fallen auf den lateinischen Trenner zurück.
List<String> splitElementParts(String element, String languageCode) {
  final separator = _elementSeparators[languageCode] ?? ' & ';
  return element.split(separator);
}
