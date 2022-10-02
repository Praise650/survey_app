import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';

import '../../widgets/option_box.dart';
import '../../widgets/question_widget.dart';
import 'view_model/question_screen_view_model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionScreenViewModel>(builder: (
      context,
      model,
      child,
    ) {
      return SafeArea(
        child: BaseScaffold(
          body: Container(
            padding: Dimens.screenPadding,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.deepPurple],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: model.previousQuestion == true ? () {} : () {},
                  icon: const Icon(
                    Icons.west,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Previous',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          QuestionWidget(
                            currentQuestion: model.currentQuestion,
                            totalQuestion: 5,
                            question: model.question.toString(),
                            // 'Which of this is true about Real Estate Management  '
                            // 'and Investment in the year 1844 and accepted by over 200 Countries in '
                            // 'our modern age and time',
                          ),
                          const OptionBox(
                            text: 'Was Widely Used',
                          ),
                          const OptionBox(
                            text: 'Was Widely accepted',
                          ),
                          const OptionBox(),
                          const OptionBox(),
                        ],
                      );
                    },
                  ),
                ),
                const BaseButton(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
