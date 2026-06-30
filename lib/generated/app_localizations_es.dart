// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get startButton => 'Empezar el test';

  @override
  String get tagline => 'Descubre qué tipo de dragón y qué elemento eres';

  @override
  String questionOf(int current, int total) {
    return 'Pregunta $current de $total';
  }

  @override
  String get yourResult => 'Tu resultado';

  @override
  String get dragonType => 'Tipo de dragón';

  @override
  String get species => 'Especie';

  @override
  String get subtype => 'Subespecie';

  @override
  String get element => 'Elemento';

  @override
  String get rarity => 'Rareza';

  @override
  String get restartButton => 'Jugar de nuevo';

  @override
  String get shareButton => 'Compartir';

  @override
  String get languageLabel => 'Idioma';

  @override
  String get back => 'Atrás';

  @override
  String get settings => 'Ajustes';

  @override
  String get audioSection => 'Audio';

  @override
  String get musicVolume => 'Música';

  @override
  String get sfxVolume => 'Efectos';

  @override
  String get languageSection => 'Idioma';

  @override
  String get aboutSection => 'Acerca de la app';

  @override
  String get version => 'Versión';

  @override
  String get reportBug => 'Informar de un error';

  @override
  String get reportBugSubtitle => 'Informar del problema en GitHub';

  @override
  String get quitTitle => '¿Salir del test?';

  @override
  String get quitMessage => 'Perderás tu progreso.';

  @override
  String get quitConfirm => 'Salir';

  @override
  String get quitCancel => 'Seguir jugando';

  @override
  String lastResultLabel(String name) {
    return 'Último: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Último resultado: $name. Toca para verlo.';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 Soy un $name, elemento $element.\n\n¿Quieres descubrir qué eres tú?\nConsigue la app aquí: $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'No se pudo abrir el navegador.';

  @override
  String get shareError => 'No se pudo compartir.';

  @override
  String get mute => 'Silenciar';

  @override
  String get unmute => 'Activar sonido';

  @override
  String get shareResult => 'Compartir resultado';

  @override
  String get quizBackgroundSemantics => 'Fondo del test';

  @override
  String dragonImageSemantics(String name) {
    return '$name – imagen del dragón';
  }

  @override
  String progressSemantics(int current, int total) {
    return 'Progreso: $current de $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name. Especie: $species. Elemento: $element. Rareza: $rarity. $description';
  }
}
