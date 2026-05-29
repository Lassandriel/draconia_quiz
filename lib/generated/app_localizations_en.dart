// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get startButton => 'Start Quiz';

  @override
  String get tagline => 'Discover which dragon type and element you are';

  @override
  String questionOf(int current, int total) {
    return 'Question $current of $total';
  }

  @override
  String get yourResult => 'Your Result';

  @override
  String get dragonType => 'Dragon Type';

  @override
  String get species => 'Species';

  @override
  String get subtype => 'Subtype';

  @override
  String get element => 'Element';

  @override
  String get rarity => 'Rarity';

  @override
  String get restartButton => 'Play Again';

  @override
  String get shareButton => 'Share';

  @override
  String get languageLabel => 'Language';

  @override
  String get back => 'Back';

  @override
  String get settings => 'Settings';

  @override
  String get audioSection => 'Audio';

  @override
  String get musicVolume => 'Music';

  @override
  String get sfxVolume => 'Effects';

  @override
  String get languageSection => 'Language';

  @override
  String get aboutSection => 'About';

  @override
  String get version => 'Version';

  @override
  String get reportBug => 'Report a Bug';

  @override
  String get reportBugSubtitle => 'Open an issue on GitHub';

  @override
  String get quitTitle => 'Quit the quiz?';

  @override
  String get quitMessage => 'Your progress will be lost.';

  @override
  String get quitConfirm => 'Quit';

  @override
  String get quitCancel => 'Keep playing';

  @override
  String lastResultLabel(String name) {
    return 'Last: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Last result: $name. Tap to view.';
  }
}
