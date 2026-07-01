// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get reportProblemHome => 'هل وجدت خطأً أو خطأً مطبعياً؟ انقر هنا!';

  @override
  String get startButton => 'ابدأ الاختبار';

  @override
  String get tagline => 'اكتشف أي نوع من التنانين وأي عنصر تمثّل';

  @override
  String questionOf(int current, int total) {
    return 'السؤال $current من $total';
  }

  @override
  String get yourResult => 'نتيجتك';

  @override
  String get dragonType => 'نوع التنين';

  @override
  String get species => 'الفصيلة';

  @override
  String get subtype => 'الفصيلة الفرعية';

  @override
  String get element => 'العنصر';

  @override
  String get rarity => 'الندرة';

  @override
  String get restartButton => 'العب مرة أخرى';

  @override
  String get shareButton => 'مشاركة';

  @override
  String get languageLabel => 'اللغة';

  @override
  String get back => 'رجوع';

  @override
  String get settings => 'الإعدادات';

  @override
  String get audioSection => 'الصوت';

  @override
  String get musicVolume => 'الموسيقى';

  @override
  String get sfxVolume => 'المؤثرات';

  @override
  String get languageSection => 'اللغة';

  @override
  String get aboutSection => 'عن التطبيق';

  @override
  String get version => 'الإصدار';

  @override
  String get reportBug => 'الإبلاغ عن خطأ';

  @override
  String get reportBugSubtitle => 'الإبلاغ عن المشكلة على GitHub';

  @override
  String get quitTitle => 'إنهاء الاختبار؟';

  @override
  String get quitMessage => 'سيُفقد تقدّمك.';

  @override
  String get quitConfirm => 'إنهاء';

  @override
  String get quitCancel => 'متابعة اللعب';

  @override
  String lastResultLabel(String name) {
    return 'الأخيرة: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'النتيجة الأخيرة: $name. انقر للعرض.';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 أنا $name، عنصري $element.\n\nهل تريد أن تكتشف ماذا تكون؟\nاحصل على التطبيق هنا: $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'تعذّر فتح المتصفح.';

  @override
  String get shareError => 'فشلت المشاركة.';

  @override
  String get mute => 'كتم الصوت';

  @override
  String get unmute => 'تشغيل الصوت';

  @override
  String get shareResult => 'مشاركة النتيجة';

  @override
  String get quizBackgroundSemantics => 'خلفية الاختبار';

  @override
  String dragonImageSemantics(String name) {
    return '$name – صورة التنين';
  }

  @override
  String progressSemantics(int current, int total) {
    return 'التقدّم: $current من $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name. الفصيلة: $species. العنصر: $element. الندرة: $rarity. $description';
  }
}
