import 'package:flutter/cupertino.dart';
import '../../../../core/services/question_services.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  BaseQuestion baseQuestion = BaseQuestion();

  List<String> answers = [];

  ///store selected answer
  String? get answer => baseQuestion.getAnswer;

  String? get question => baseQuestion.question;

  int get currentQuestion => baseQuestion.questionNumber;

  List<String>? get options => baseQuestion.options;

  int get optionLength => baseQuestion.optionsLength!;

  updateSelectedOptions(int index) {
    print(answer);
    baseQuestion.answered(index);
    notifyListeners();
  }

  int? get currentOptionIndex => baseQuestion.currentOptionIndex;

  previousQuestion(PageController controller) {
    return controller.animateToPage((baseQuestion.previousQuestion()),
        duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
  }

  Future<void> nextQuestion(PageController controller) {
    debugPrint('Debug print $answers');
    return controller.animateToPage((baseQuestion.nextQuestion()),
        duration: const Duration(milliseconds: 20), curve: Curves.bounceIn);
  }

  void updateQuestion(int value) {
    baseQuestion.questionNumber = value;
    notifyListeners();
  }
}
