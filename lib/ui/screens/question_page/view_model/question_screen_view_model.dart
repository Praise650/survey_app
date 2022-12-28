import 'package:flutter/material.dart';
import 'package:survey_app/Navigation/route.dart';
import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  QuestionService baseQuestion = QuestionService();

  List<String> answers = [];

  ///store selected answer
  // String? get answer => baseQuestion.getAnswer;
  String? typedAnswer = '';

  String? get question => baseQuestion.question;

  int get currentQuestion => baseQuestion.questionNumber;

  List<String>? get options => baseQuestion.options;

  int get optionLength => baseQuestion.optionsLength!;

  updateSelectedAnswer(int index) {
    baseQuestion.optionNumber = index;
    if (options != null) {
      String? pickedAnswer = baseQuestion.selectedAnswered(
          baseQuestion.options![baseQuestion.currentOptionIndex!]);
      answers.add(pickedAnswer!);
      notifyListeners();
    }
    notifyListeners();
  }

  saveAnswer() {
    if (typedAnswer != null) {
      answers.add(typedAnswer!);
      notifyListeners();
    }
    notifyListeners();
  }

  int? get currentOptionIndex => baseQuestion.currentOptionIndex;

  previousQuestion(PageController controller) {
    return controller.animateToPage((baseQuestion.previousQuestion()),
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
  }

  Future<void> nextQuestion(PageController controller, BuildContext context) {
    debugPrint('Debug print $answers');
    if (baseQuestion.questionNumber < baseQuestion.questionLength) {
      return controller.animateToPage((baseQuestion.nextQuestion()),
          duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
    } else {
      return Navigator.pushNamed(
        context,
        RouteManager.resultPage,
        arguments: answers,
      );
    }
  }

  void updateQuestion(int value) {
    baseQuestion.questionNumber = value;
    notifyListeners();
  }
}
