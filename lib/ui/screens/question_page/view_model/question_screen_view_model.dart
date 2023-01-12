import 'package:flutter/material.dart';
import 'package:survey_app/Navigation/route.dart';
import 'package:survey_app/core/models/option_model.dart';
import 'package:survey_app/core/models/question/question_model.dart';
import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  final QuestionService _questionService = QuestionService();

  /// gets list of questions
  List<QuestionModel> get questions => _questionService.questions;

  List<OptionModel> answers = [];

  ///store typed answer
  OptionModel? answer;

  /// get current question Number and current option index
  int get currentQuestionNumber => _questionService.currentQuestionNumber;

  int get questionNumber => _questionService.questionNumber;

  /// get length of questions ans options
  int? get optionLength => _questionService.optionsLength;

  int get questionLength => _questionService.questionLength;

  updateSelectedAnswer(OptionModel option) {
    if (_questionService.isLocked == true) {
    } else {
      _questionService.islocked = true;
      _questionService.setAnswer = option;
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

  previousQuestion(PageController controller) {
    return controller.animateToPage((_questionService.previousQuestion()),
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
  }

  nextQuestion(PageController controller, BuildContext context) {
    if (questionNumber < questionLength) {
      saveAnswer(answer);
      controller.animateToPage(_questionService.nextQuestion,
          duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
      debugPrint('Debug print $answers');
    } else {
      Navigator.pushReplacementNamed(
        context,
        RouteManager.resultPage,
        arguments: answers,
      );
    }
  }

  void updateQuestion(int value) {
    _questionService.setQuestionNumber = value;
    notifyListeners();
  }
}
