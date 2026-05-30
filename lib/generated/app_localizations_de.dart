// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get startButton => 'Quiz starten';

  @override
  String get tagline =>
      'Entdecke, welche Drachenart und welches Element du bist';

  @override
  String questionOf(int current, int total) {
    return 'Frage $current von $total';
  }

  @override
  String get yourResult => 'Dein Ergebnis';

  @override
  String get dragonType => 'Drachenart';

  @override
  String get species => 'Spezies';

  @override
  String get subtype => 'Unterart';

  @override
  String get element => 'Element';

  @override
  String get rarity => 'Seltenheit';

  @override
  String get restartButton => 'Nochmal spielen';

  @override
  String get shareButton => 'Teilen';

  @override
  String get languageLabel => 'Sprache';

  @override
  String get back => 'Zurück';

  @override
  String get settings => 'Einstellungen';

  @override
  String get audioSection => 'Audio';

  @override
  String get musicVolume => 'Musik';

  @override
  String get sfxVolume => 'Effekte';

  @override
  String get languageSection => 'Sprache';

  @override
  String get aboutSection => 'Über die App';

  @override
  String get version => 'Version';

  @override
  String get reportBug => 'Bug melden';

  @override
  String get reportBugSubtitle => 'Problem auf GitHub melden';

  @override
  String get quitTitle => 'Quiz abbrechen?';

  @override
  String get quitMessage => 'Dein Fortschritt geht verloren.';

  @override
  String get quitConfirm => 'Abbrechen';

  @override
  String get quitCancel => 'Weiter spielen';

  @override
  String lastResultLabel(String name) {
    return 'Zuletzt: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Letztes Ergebnis: $name. Tippen zum Anzeigen.';
  }

  @override
  String shareText(
    String name,
    String species,
    String element,
    String description,
  ) {
    return '🐉 Ich bin ein $name!\nSpezies: $species | Element: $element\n\n$description\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'Konnte Browser nicht öffnen.';
}
