import 'package:flutter/cupertino.dart';
import 'package:survey_app/core/models/question/question_model.dart';

import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  BaseQuestion baseQuestion = BaseQuestion();

  int selectedIndex = 0;

  update(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  bool previousQuestion() {
    return baseQuestion.previousQuestion();
  }

  String? get question => baseQuestion.question;

  int nextQuestion() {
    return baseQuestion.nextQuestion();
  }

  int get currentQuestion => baseQuestion.questionNumber;
//TODO: implement setter for current question

}
