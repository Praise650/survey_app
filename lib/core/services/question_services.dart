// import '../models/option_model.dart';
// import '../models/question/question_bank.dart';
// import '../models/question/question_model.dart';
//
// class QuestionService {
//   QuestionBank _questions = QuestionBank();
//   int _questionNumber = 0;
//
//   /// getters
//   /// questions
//   int get currentQuestionNumber => _questionNumber + 1;
//
//   ///gets list of questions
//   List<QuestionModel> get questions => _questions.generalQuestions;
//
//   /// gets lengths of questions and (options at index)
//   int get questionLength => _questions.generalQuestions.length;
//
//   int? get optionsLength => _questions.generalQuestions[_questionNumber].options?.length;
//
//   /// get answered state
//   bool get isLocked => _questions.generalQuestions[_questionNumber].isLocked;
//
//   ///get next question
//   int get nextQuestion => ++_questionNumber;
//
//   /// set question & option index
//   set setQuestionNumber(int number) => _questionNumber = number;
//
//   set islocked(bool value) => _questions.generalQuestions[_questionNumber].isLocked = value;
//
//   /// set selected Answer
//   set setAnswer(OptionModel answer) =>
//       _questions.generalQuestions[_questionNumber].selectedAnswer = answer;
//
//   setQuestionOnStartPage(){
//     _questions = QuestionBank();
//   }
//
//   int previousQuestion() {
//     if (_questionNumber != 0) {
//       return --_questionNumber;
//     } else {
//       return _questionNumber;
//     }
//   }
// }
