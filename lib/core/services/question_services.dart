import '../models/question/question_model.dart';

class BaseQuestion {
  final List<QuestionModel> _questionModel = QuestionModel.questionDummy;

  List get questionModel => _questionModel;

  int get questionLength => _questionModel.length;
  int questionNumber = 0;

  bool previousQuestion() {
    if (questionNumber != 0) {
      return true;
    } else {
      return false;
    }
  }

  int nextQuestion() {
    if (questionNumber < _questionModel.length - 1) {
      return questionNumber++;
    } else {
      return _questionModel.length;
    }
  }

  int currentQuestion(int index) {
    return index += 1;
  }
}
