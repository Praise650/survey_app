import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:survey_app/core/models/option_model.dart';
import 'package:survey_app/core/models/question/question_model.dart';
import 'package:survey_app/ui/screens/question_page/view_model/question_screen_view_model.dart';

class OptionWidget extends StatelessWidget {
  final QuestionModel question;

  const OptionWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        question.options!.length,
        (index) => OptionBox(
          option: question.options![index]!,
          isLocked: question.isLocked,
          selectedAnswer: question.selectedAnswer,
          onTap: (option) => context
              .read<QuestionScreenViewModel>()
              .updateSelectedAnswer(option),
        ),
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  final OptionModel option;
  final ValueChanged<OptionModel> onTap;
  final bool isLocked;
  final OptionModel? selectedAnswer;

  const OptionBox(
      {Key? key,
      required this.option,
      required this.onTap,
      required this.isLocked,
      required this.selectedAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(option),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: isLocked == true && option == selectedAnswer
              ? Border.all(
                  color: Colors.green,
                  style: BorderStyle.solid,
                  width: 2,
                )
              : Border.all(
                  color: Colors.transparent,
                  style: BorderStyle.none,
                  width: 0,
                ),
        ),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(option.text ?? 'NO OPTION'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      spreadRadius: 1)
                ],
              ),
              child: isLocked == true && option == selectedAnswer
                  ? const CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 12,
                      ),
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
