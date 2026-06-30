import '../data/localized_text.dart';
import 'dragon_type.dart';

class QuizAnswer {
  final LocalizedText text;
  final Map<DragonSubtype, int> scores;

  const QuizAnswer({required this.text, required this.scores});
}

class QuizQuestion {
  final LocalizedText text;
  final List<QuizAnswer> answers;

  const QuizQuestion({required this.text, required this.answers});
}
