import 'package:flutter/material.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';

import '../../widgets/option_box.dart';
import '../../widgets/question_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
                      children: const [
                        QuestionWidget(
                          currentQuestion: 2,
                          totalQuestion: 5,
                          question:
                              'Which of this is true about Real Estate Management  '
                              'and Investment in the year 1844 and accepted by over 200 Countries in '
                              'our modern age and time',
                        ),
                        OptionBox(
                          text: 'Was Widely Used',
                        ),
                        OptionBox(
                          text: 'Was Widely accepted',
                        ),
                        OptionBox(),
                        OptionBox(),
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
  }
}
