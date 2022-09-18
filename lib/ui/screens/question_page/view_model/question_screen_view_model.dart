import 'package:flutter/cupertino.dart';
import 'package:survey_app/core/models/question/question_model.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  update(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<QuestionModel> questionList = QuestionModel.questionDummy;
}
