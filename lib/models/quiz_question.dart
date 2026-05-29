import 'dragon_type.dart';

class QuizAnswer {
  final String textDe;
  final String textEn;
  final Map<DragonSubtype, int> scores;

  const QuizAnswer({
    required this.textDe,
    required this.textEn,
    required this.scores,
  });
}

class QuizQuestion {
  final String textDe;
  final String textEn;
  final List<QuizAnswer> answers;

  const QuizQuestion({
    required this.textDe,
    required this.textEn,
    required this.answers,
  });
}
