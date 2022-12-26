import 'package:survey_app/core/models/question/question_bank.dart';

class QuestionModel {
  final String? question;
  final String? answer;
  final List<String>? options;
  int? answered;

  String? getAnswer() => answered != null ? options![answered ?? 0] : null;

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    this.answered,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
        answered: json['answered'],
        answer: json['answer'],
        question: json['question'],
      );

  static List<QuestionModel> healthQuestionDummy = QuestionBank.healthQuestion;
  static List<QuestionModel> generalQuestionDummy =
      QuestionBank.generalQuestions;
}
