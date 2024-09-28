class QuizModel {
  final String question;
  final List<String> options;
  final int correctAnswer;

  QuizModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}
