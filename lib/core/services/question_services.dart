import '../models/question/question_model.dart';

class BaseQuestion {
  final List<QuestionModel> _questionModel = QuestionModel.questionDummy;

  int _questionNumber = 0;

  int get questionLength => _questionModel.length;

  int get questionNumber => _questionNumber + 1;

  int? get optionsLength => _questionModel[_questionNumber].options?.length;

  String? get question => _questionModel[_questionNumber].question;

  String? get answered => _questionModel[_questionNumber].answer;

  bool? get isAnswered => _questionModel[_questionNumber].isAnswered;

  List<String>? get options => _questionModel[_questionNumber].options;

  List get questionModel => _questionModel;

  set questionNumber(int number) {
    _questionNumber = number;
  }

  set isAnswered(bool? value) {
    _questionModel[_questionNumber].isAnswered = value;
  }

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

// updateBool() {
//   _questionModel[_questionNumber].updateBool();
// }

// int currentQuestion(int index) {
//   return index += 1;
// }
}
