// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get reportProblemHome => 'バグや誤字を見つけましたか？ こちらをタップ！';

  @override
  String get startButton => 'クイズを始める';

  @override
  String get tagline => 'あなたがどの竜で、どの属性なのかを見つけよう';

  @override
  String questionOf(int current, int total) {
    return '質問 $current / $total';
  }

  @override
  String get yourResult => 'あなたの結果';

  @override
  String get dragonType => '竜の種類';

  @override
  String get species => '種族';

  @override
  String get subtype => '亜種';

  @override
  String get element => '属性';

  @override
  String get rarity => '稀少度';

  @override
  String get restartButton => 'もう一度遊ぶ';

  @override
  String get shareButton => 'シェア';

  @override
  String get languageLabel => '言語';

  @override
  String get back => '戻る';

  @override
  String get settings => '設定';

  @override
  String get audioSection => 'サウンド';

  @override
  String get musicVolume => '音楽';

  @override
  String get sfxVolume => '効果音';

  @override
  String get languageSection => '言語';

  @override
  String get aboutSection => 'このアプリについて';

  @override
  String get version => 'バージョン';

  @override
  String get reportBug => '不具合を報告';

  @override
  String get reportBugSubtitle => 'GitHub で問題を報告する';

  @override
  String get quitTitle => 'クイズを中断しますか？';

  @override
  String get quitMessage => '進行状況は失われます。';

  @override
  String get quitConfirm => '中断する';

  @override
  String get quitCancel => '続ける';

  @override
  String lastResultLabel(String name) {
    return '前回： $name';
  }

  @override
  String lastResultSemantics(String name) {
    return '前回の結果： $name。タップして表示。';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 私は$name、属性は$element。\n\nあなたが何なのか、調べてみない？\nアプリはこちら： $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'ブラウザを開けませんでした。';

  @override
  String get shareError => 'シェアに失敗しました。';

  @override
  String get mute => 'ミュート';

  @override
  String get unmute => 'ミュート解除';

  @override
  String get shareResult => '結果をシェア';

  @override
  String get quizBackgroundSemantics => 'クイズの背景';

  @override
  String dragonImageSemantics(String name) {
    return '$name – 竜の画像';
  }

  @override
  String progressSemantics(int current, int total) {
    return '進行状況： $current / $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name。種族： $species。属性： $element。稀少度： $rarity。$description';
  }
}
