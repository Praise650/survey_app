import 'package:survey_app/core/models/question/question_bank.dart';

import '../option_model.dart';

class QuestionModel {
  final String question;
  OptionModel? selectedAnswer;
  final List<OptionModel?>? options;
  bool isLocked;

  QuestionModel({
    required this.question,
    this.selectedAnswer,
    this.options,
    this.isLocked = false,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
        selectedAnswer: json['answer'],
        question: json['question'],
      );

  static List<QuestionModel> healthQuestionDummy = QuestionBank.healthQuestion;
  static List<QuestionModel> generalQuestionDummy =
      QuestionBank.generalQuestions;
}
