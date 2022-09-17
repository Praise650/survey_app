import 'package:flutter/cupertino.dart';
import 'package:survey_app/core/models/question/question_model.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  List<QuestionModel> questionList = QuestionModel.questionDummy;
}
