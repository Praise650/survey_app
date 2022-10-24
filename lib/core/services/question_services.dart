import 'package:flutter/material.dart';
import 'package:survey_app/ui/screens/result_page/result_screen.dart';

import '../models/question/question_model.dart';

class BaseQuestion {
  final List<QuestionModel> _questionModel = QuestionModel.questionDummy;

  int _questionNumber = 0;

  int get questionLength => _questionModel.length;

  int get questionNumber => _questionNumber + 1;

  int? get optionsLength => _questionModel[_questionNumber].options?.length;

  //Get Selected answer
  int? selectedAnswer;

  ///get question at index
  String? get question => _questionModel[_questionNumber].question;

  ///get selected answer
  String? get getAnswer => _questionModel[_questionNumber].getAnswer();

  /// set option index
  int? answered(int selectedOptionIndex) =>
      _questionModel[_questionNumber].answered = selectedOptionIndex;

  int? get currentOptionIndex => _questionModel[_questionNumber].answered;


  ///Display list of options
  List<String>? get options => _questionModel[_questionNumber].options;

  List get questionModel => _questionModel;

  /// set question index
  set questionNumber(int number) => _questionNumber = number;

  int previousQuestion() {
    if (_questionNumber != 0) {
      return --_questionNumber;
    } else {
      return _questionNumber;
    }
  }

  int nextQuestion() {
    if (questionNumber < _questionModel.length) {
      return questionNumber++;
    } else {
      return _questionModel.length;
    }
  }

// int currentQuestion(int index) {
//   return index += 1;
// }
}
