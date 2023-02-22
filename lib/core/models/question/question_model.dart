import '../option_model.dart';

class QuestionModel {
  final String? question;
  OptionModel? selectedAnswer;
  final List<OptionModel?>? options;
  bool isLocked;

  QuestionModel({
    this.question,
    this.selectedAnswer,
    this.options,
    this.isLocked = false,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        options: json['options'],
        selectedAnswer: json['answer'],
        question: json['question'],
      );
}
