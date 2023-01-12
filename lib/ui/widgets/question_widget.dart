import 'package:flutter/material.dart';
import 'package:survey_app/core/models/question/question_model.dart';

class QuestionWidget extends StatelessWidget {
  final int currentQuestion;

  final int totalQuestion;

  final QuestionModel model;

  const QuestionWidget({
    Key? key,
    required this.currentQuestion,
    required this.totalQuestion,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(
          'Question $currentQuestion of $totalQuestion',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          model.question.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
          color: Colors.white,
          thickness: 2,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
