class QuestionModel {
  final String? question;
  final String? answer;
  final List<String>? options;
  final bool? isAnswered;

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    this.isAnswered,
  });

  static List<QuestionModel> questionDummy = [];
}
