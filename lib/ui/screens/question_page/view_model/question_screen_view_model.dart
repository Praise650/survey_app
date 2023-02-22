import 'package:flutter/material.dart';
import 'package:survey_app/Navigation/route.dart';
import 'package:survey_app/core/models/option_model.dart';
import '../../../../core/models/question/question_bank.dart';
// import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  QuestionBank questionService = QuestionBank();

  TextEditingController answerController = TextEditingController();

  int _questionNumber = 0;

  /// getters
  /// get current question Number and current option index
  int get questionNumber => ++_questionNumber;

  /// get length of questions and (options at index)
  int get questionLength => questionService.generalQuestions.length;

  /// get answered state
  bool get isLocked =>
      questionService.generalQuestions[_questionNumber].isLocked;

  ///setters
  /// set question & option index
  set updateQuestion(int number) => _questionNumber = number;

  /// lock selected answer
  set islocked(bool value) =>
      questionService.generalQuestions[_questionNumber].isLocked = value;

  /// set selected Answer
  set setAnswer(OptionModel answer) =>
      questionService.generalQuestions[_questionNumber].selectedAnswer = answer;

  ///store typed answer
  OptionModel? answer;

  List<OptionModel> answers = [];

  saveTypedAnswer(String? value) {
    if (value != null) {
      OptionModel _typedVale = OptionModel(text: value);
      answer = _typedVale;
      notifyListeners();
    } else {
      OptionModel _typedVale = OptionModel(text: "No Answer");
      answer = _typedVale;
      notifyListeners();
    }
  }

  updateSelectedAnswer(OptionModel option) {
    if (isLocked == true) {
    } else {
      islocked = true;
      setAnswer = option;
      answer = option;
      notifyListeners();
    }
  }

  saveAnswer(OptionModel? value) {
    if (value != null) {
      answers.add(value);
      notifyListeners();
    } else {
      final _typedVale = OptionModel(text: "No Answered");
      answers.add(_typedVale);
      notifyListeners();
    }
  }

  int _previousQuestion() {
    if (_questionNumber != 0) {
      return --_questionNumber;
    } else {
      return _questionNumber;
    }
  }

  previousQuestion(PageController controller) {
    if (isLocked != true) {
      return controller.animateToPage((_previousQuestion()),
          duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
    } else {
      return;
    }
  }

  nextQuestion(PageController controller, BuildContext context) {
    if (_questionNumber < questionLength) {
      saveAnswer(answer);
      controller.animateToPage(++_questionNumber,
          duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
      debugPrint('Debug print ${answer!.text}');
    } else {
      Navigator.pushReplacementNamed(
        context,
        RouteManager.resultPage,
        arguments: answers,
      );
    }
  }
}
