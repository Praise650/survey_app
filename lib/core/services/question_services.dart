import '../models/question/question_model.dart';

class QuestionService {
  final List<QuestionModel> _questionModel = QuestionModel.generalQuestionDummy;

  int? _currentOptionsIndex;
  int _questionNumber = 0;

  /// getters
  /// questions and options getter
  int get questionNumber => _questionNumber + 1;

  int? get currentOptionIndex => _currentOptionsIndex;

  ///gets list of questions and options
  List get questionModel => _questionModel;

  List<String>? get options => _questionModel[_questionNumber].options;

  /// gets lengths of questions and (options at index)
  int get questionLength => _questionModel.length;

  int? get optionsLength => _questionModel[_questionNumber].options?.length;

  ///get question at index
  String? get question => _questionModel[_questionNumber].question;

  ///get selected answer
  // String? get getAnswer => _questionModel[_questionNumber].getAnswer();

  /// set question & option index
  set questionNumber(int number) => _questionNumber = number;

  set optionNumber(int number) => _currentOptionsIndex = number;

  /// get selected answer at option index
  String? selectedAnswered(String pickedAnswer) =>
      _questionModel[_questionNumber].answer = pickedAnswer;

  int previousQuestion() {
    if (_questionNumber != 0) {
      return --_questionNumber;
    } else {
      return _questionNumber;
    }
  }

  int nextQuestion() => questionNumber++;
}
