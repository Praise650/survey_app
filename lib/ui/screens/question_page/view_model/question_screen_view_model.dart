import 'package:flutter/cupertino.dart';

import '../../../../core/models/question/question_model.dart';
import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  BaseQuestion baseQuestion = BaseQuestion();

  int selectedOptionIndex = 0;

  List<String> answers = [];

  String _answer = '';
  String? get answer => _answer;

  String? get question => baseQuestion.question;

  int get currentQuestion => baseQuestion.questionNumber;

  List<String>? get options => baseQuestion.options;

  String? get answered => baseQuestion.answered;

  void setAnswered(String selectedAnswer) {
    _answer = selectedAnswer;
    notifyListeners();
  }

  bool? get isAnswered => baseQuestion.isAnswered;

  int get optionLength => baseQuestion.optionsLength!;

  // bool isActive = false;

  // update(int index) {
  //   selectedIndex = index;
  //   notifyListeners();
  // }

  updateSelectedOptions(int index, String selectedAnswer) {
    selectedOptionIndex = index;
    _answer = selectedAnswer;
    notifyListeners();
  }

  previousQuestion(PageController controller) {
    return controller.animateToPage((baseQuestion.previousQuestion()),
        duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
  }

  Future<void> nextQuestion(PageController controller) {
    return controller.animateToPage((baseQuestion.nextQuestion()),
        duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
  }

  void updateQuestion(int value) {
    baseQuestion.questionNumber = value;
    notifyListeners();
  }

  updateChecked(QuestionModel questionModel) {
    print('object' 'he');
    questionModel.updateCheckbox;
    notifyListeners();
  }
}
