// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get startButton => 'Commencer le test';

  @override
  String get tagline => 'Découvre quel type de dragon et quel élément tu es';

  @override
  String questionOf(int current, int total) {
    return 'Question $current sur $total';
  }

  @override
  String get yourResult => 'Ton résultat';

  @override
  String get dragonType => 'Type de dragon';

  @override
  String get species => 'Espèce';

  @override
  String get subtype => 'Sous-espèce';

  @override
  String get element => 'Élément';

  @override
  String get rarity => 'Rareté';

  @override
  String get restartButton => 'Rejouer';

  @override
  String get shareButton => 'Partager';

  @override
  String get languageLabel => 'Langue';

  @override
  String get back => 'Retour';

  @override
  String get settings => 'Paramètres';

  @override
  String get audioSection => 'Audio';

  @override
  String get musicVolume => 'Musique';

  @override
  String get sfxVolume => 'Effets';

  @override
  String get languageSection => 'Langue';

  @override
  String get aboutSection => 'À propos de l\'app';

  @override
  String get version => 'Version';

  @override
  String get reportBug => 'Signaler un bug';

  @override
  String get reportBugSubtitle => 'Signaler le problème sur GitHub';

  @override
  String get quitTitle => 'Quitter le test ?';

  @override
  String get quitMessage => 'Ta progression sera perdue.';

  @override
  String get quitConfirm => 'Quitter';

  @override
  String get quitCancel => 'Continuer à jouer';

  @override
  String lastResultLabel(String name) {
    return 'Dernier : $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Dernier résultat : $name. Touche pour l\'afficher.';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 Je suis un $name, élément $element.\n\nTu veux découvrir ce que tu es ?\nTélécharge l\'app ici : $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'Impossible d\'ouvrir le navigateur.';

  @override
  String get shareError => 'Échec du partage.';

  @override
  String get mute => 'Couper le son';

  @override
  String get unmute => 'Activer le son';

  @override
  String get shareResult => 'Partager le résultat';

  @override
  String get quizBackgroundSemantics => 'Arrière-plan du test';

  @override
  String dragonImageSemantics(String name) {
    return '$name – image du dragon';
  }

  @override
  String progressSemantics(int current, int total) {
    return 'Progression : $current sur $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name. Espèce : $species. Élément : $element. Rareté : $rarity. $description';
  }
}
