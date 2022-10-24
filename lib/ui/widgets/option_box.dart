import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/question_page/view_model/question_screen_view_model.dart';

class OptionBox extends StatelessWidget {
  final String? text;
  final bool isAnswered = false;

  const OptionBox({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionScreenViewModel>(
      builder: (context, model, child) => Column(
        children: List.generate(
          model.optionLength,
          (index) => GestureDetector(
            onTap: () => model.updateSelectedOptions(index),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: model.currentOptionIndex == index
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
                  Text(model.options?[index] ?? 'NO OPTION'),
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
                    child: model.currentOptionIndex == index
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
          ),
        ),
      ),
    );
  }
}
