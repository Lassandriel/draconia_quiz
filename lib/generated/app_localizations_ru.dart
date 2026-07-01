// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get reportProblemHome => 'Нашли ошибку или опечатку? Нажмите здесь!';

  @override
  String get startButton => 'Начать тест';

  @override
  String get tagline => 'Узнай, какой ты дракон и какая у тебя стихия';

  @override
  String questionOf(int current, int total) {
    return 'Вопрос $current из $total';
  }

  @override
  String get yourResult => 'Твой результат';

  @override
  String get dragonType => 'Вид дракона';

  @override
  String get species => 'Вид';

  @override
  String get subtype => 'Подвид';

  @override
  String get element => 'Стихия';

  @override
  String get rarity => 'Редкость';

  @override
  String get restartButton => 'Играть снова';

  @override
  String get shareButton => 'Поделиться';

  @override
  String get languageLabel => 'Язык';

  @override
  String get back => 'Назад';

  @override
  String get settings => 'Настройки';

  @override
  String get audioSection => 'Звук';

  @override
  String get musicVolume => 'Музыка';

  @override
  String get sfxVolume => 'Эффекты';

  @override
  String get languageSection => 'Язык';

  @override
  String get aboutSection => 'О приложении';

  @override
  String get version => 'Версия';

  @override
  String get reportBug => 'Сообщить об ошибке';

  @override
  String get reportBugSubtitle => 'Сообщить о проблеме на GitHub';

  @override
  String get quitTitle => 'Выйти из теста?';

  @override
  String get quitMessage => 'Твой прогресс будет потерян.';

  @override
  String get quitConfirm => 'Выйти';

  @override
  String get quitCancel => 'Продолжить игру';

  @override
  String lastResultLabel(String name) {
    return 'Последний: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Последний результат: $name. Нажми, чтобы посмотреть.';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 Я $name, стихия — $element.\n\nХочешь узнать, кто ты?\nСкачай приложение здесь: $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'Не удалось открыть браузер.';

  @override
  String get shareError => 'Не удалось поделиться.';

  @override
  String get mute => 'Выключить звук';

  @override
  String get unmute => 'Включить звук';

  @override
  String get shareResult => 'Поделиться результатом';

  @override
  String get quizBackgroundSemantics => 'Фон теста';

  @override
  String dragonImageSemantics(String name) {
    return '$name – изображение дракона';
  }

  @override
  String progressSemantics(int current, int total) {
    return 'Прогресс: $current из $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name. Вид: $species. Стихия: $element. Редкость: $rarity. $description';
  }
}
