// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Draconia Quiz';

  @override
  String get reportProblemHome =>
      'Encontrou um bug ou erro de digitação? Toque aqui!';

  @override
  String get startButton => 'Iniciar o teste';

  @override
  String get tagline => 'Descubra que tipo de dragão e que elemento você é';

  @override
  String questionOf(int current, int total) {
    return 'Pergunta $current de $total';
  }

  @override
  String get yourResult => 'Seu resultado';

  @override
  String get dragonType => 'Tipo de dragão';

  @override
  String get species => 'Espécie';

  @override
  String get subtype => 'Subespécie';

  @override
  String get element => 'Elemento';

  @override
  String get rarity => 'Raridade';

  @override
  String get restartButton => 'Jogar de novo';

  @override
  String get shareButton => 'Compartilhar';

  @override
  String get languageLabel => 'Idioma';

  @override
  String get back => 'Voltar';

  @override
  String get settings => 'Configurações';

  @override
  String get audioSection => 'Áudio';

  @override
  String get musicVolume => 'Música';

  @override
  String get sfxVolume => 'Efeitos';

  @override
  String get languageSection => 'Idioma';

  @override
  String get aboutSection => 'Sobre o app';

  @override
  String get version => 'Versão';

  @override
  String get reportBug => 'Relatar um erro';

  @override
  String get reportBugSubtitle => 'Relatar o problema no GitHub';

  @override
  String get quitTitle => 'Sair do teste?';

  @override
  String get quitMessage => 'Seu progresso será perdido.';

  @override
  String get quitConfirm => 'Sair';

  @override
  String get quitCancel => 'Continuar jogando';

  @override
  String lastResultLabel(String name) {
    return 'Último: $name';
  }

  @override
  String lastResultSemantics(String name) {
    return 'Último resultado: $name. Toque para ver.';
  }

  @override
  String shareText(String name, String element, String url) {
    return '🐉 Eu sou um $name, elemento $element.\n\nQuer descobrir o que você é?\nBaixe o app aqui: $url\n\n#DraconiaQuiz';
  }

  @override
  String get bugReportError => 'Não foi possível abrir o navegador.';

  @override
  String get shareError => 'Falha ao compartilhar.';

  @override
  String get mute => 'Silenciar';

  @override
  String get unmute => 'Ativar som';

  @override
  String get shareResult => 'Compartilhar resultado';

  @override
  String get quizBackgroundSemantics => 'Plano de fundo do teste';

  @override
  String dragonImageSemantics(String name) {
    return '$name – imagem do dragão';
  }

  @override
  String progressSemantics(int current, int total) {
    return 'Progresso: $current de $total';
  }

  @override
  String resultSemantics(
    String name,
    String species,
    String element,
    String rarity,
    String description,
  ) {
    return '$name. Espécie: $species. Elemento: $element. Raridade: $rarity. $description';
  }
}
