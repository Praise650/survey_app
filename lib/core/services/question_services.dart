import '../models/question/question_model.dart';

class BaseQuestion {
  final List<QuestionModel> _questionModel = QuestionModel.generalQuestionDummy;

  //Get Selected answer
  int? selectedAnswer;
  int _questionNumber = 0;

  /// getters
  int get questionLength => _questionModel.length;

  int get questionNumber => _questionNumber + 1;

  List get questionModel => _questionModel;

  int? get optionsLength => _questionModel[_questionNumber].options?.length;

  ///get question at index
  String? get question => _questionModel[_questionNumber].question;

  ///get selected answer
  String? get getAnswer => _questionModel[_questionNumber].getAnswer();

  int? get currentOptionIndex => _questionModel[_questionNumber].answered;

  ///Display list of options
  List<String>? get options => _questionModel[_questionNumber].options;

  /// set option index
  int? answered(int selectedOptionIndex) =>
      _questionModel[_questionNumber].answered = selectedOptionIndex;

  /// set question index
  set questionNumber(int number) => _questionNumber = number;

  int previousQuestion() {
    if (_questionNumber != 0) {
      return --_questionNumber;
    } else {
      return _questionNumber;
    }
  }

  int nextQuestion() => questionNumber++;
}
