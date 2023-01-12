import '../models/option_model.dart';
import '../models/question/question_model.dart';

class QuestionService {
  final List<QuestionModel> _questions = QuestionModel.generalQuestionDummy;

  int _questionNumber = 0;

  /// getters
  /// questions
  int get currentQuestionNumber => _questionNumber + 1;

  int get questionNumber => _questionNumber;

  ///gets list of questions
  List<QuestionModel> get questions => _questions;

  /// gets lengths of questions and (options at index)
  int get questionLength => _questions.length;

  int? get optionsLength => _questions[_questionNumber].options?.length;

  /// get answered state
  bool get isLocked => _questions[_questionNumber].isLocked;

  ///get next question
  int get nextQuestion => ++_questionNumber;

  /// set question & option index
  set setQuestionNumber(int number) => _questionNumber = number;

  set islocked(bool value) => _questions[_questionNumber].isLocked = value;

  /// set selected Answer
  set setAnswer(OptionModel answer) =>
      _questions[_questionNumber].selectedAnswer = answer;

  int previousQuestion() {
    if (_questionNumber != 0) {
      return --_questionNumber;
    } else {
      return _questionNumber;
    }
  }
}
