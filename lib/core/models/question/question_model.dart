import 'package:survey_app/core/models/question/question_bank.dart';

class QuestionModel {
  final String? question;
  String? answer;
  final List<String>? options;

  // int? answerIndex;

  // String? getAnswer() => answerIndex != null ? options![answerIndex ?? 0] : null;

  QuestionModel({
    this.question,
    this.answer,
    this.options,
    // this.answerIndex,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
    // answerIndex: json['answered'],
        answer: json['answer'],
        question: json['question'],
      );

  static List<QuestionModel> healthQuestionDummy = QuestionBank.healthQuestion;
  static List<QuestionModel> generalQuestionDummy =
      QuestionBank.generalQuestions;
}
