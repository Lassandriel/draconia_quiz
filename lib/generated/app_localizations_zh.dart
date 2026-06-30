// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get startButton => '开始测验';

  @override
  String get tagline => '发现你是哪种龙、属于哪种属性';

  @override
  String questionOf(int current, int total) {
    return '第 $current 题，共 $total 题';
  }

  @override
  String get yourResult => '你的结果';

  @override
  String get dragonType => '龙的种类';

  @override
  String get species => '种族';

  @override
  String get subtype => '亚种';

  @override
  String get element => '属性';

  @override
  String get rarity => '稀有度';

  @override
  String get restartButton => '再玩一次';

  @override
  String get shareButton => '分享';

  @override
  String get languageLabel => '语言';

  @override
  String get back => '返回';

  @override
  String get settings => '设置';

  @override
  String get audioSection => '音频';

  @override
  String get musicVolume => '音乐';

  @override
  String get sfxVolume => '音效';

  @override
  String get languageSection => '语言';

  @override
  String get aboutSection => '关于本应用';

  @override
  String get version => '版本';

  @override
  String get reportBug => '报告问题';

  @override
  String get reportBugSubtitle => '在 GitHub 上反馈问题';

  @override
  String get quitTitle => '退出测验？';

  @override
  String get quitMessage => '你的进度将会丢失。';

  @override
  String get quitConfirm => '退出';

  @override
  String get quitCancel => '继续游戏';

  @override
  String lastResultLabel(String name) {
    return '上次：$name';
  }

  @override
  String lastResultSemantics(String name) {
    return '上次的结果：$name。点按以查看。';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 我是$name，属性为$element。\n\n想知道你是什么吗？\n在此获取应用：$url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => '无法打开浏览器。';

  @override
  String get shareError => '分享失败。';

  @override
  String get mute => '静音';

  @override
  String get unmute => '取消静音';

  @override
  String get shareResult => '分享结果';

  @override
  String get quizBackgroundSemantics => '测验背景';

  @override
  String dragonImageSemantics(String name) {
    return '$name – 龙的图像';
  }

  @override
  String progressSemantics(int current, int total) {
    return '进度：第 $current 题，共 $total 题';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name。种族：$species。属性：$element。稀有度：$rarity。$description';
  }
}
