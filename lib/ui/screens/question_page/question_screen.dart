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
  PageController? controller;

  @override
  initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionScreenViewModel>(
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: () async {
            if (model.currentQuestion != 0) {
              return await model.previousQuestion(controller!);
            } else if (model.currentQuestion == 0) {
              return await showDialog(
                    context: context,
                    builder: (context) => Container(
                      color: Colors.red,
                    ),
                  ) ??
                  false;
            } else {
              return false;
            }
          },
          child: SafeArea(
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
                    Container(
                      color: model.currentQuestion == 1
                          ? Colors.grey
                          : Colors.yellow,
                      child: TextButton.icon(
                        onPressed: () => model.previousQuestion(controller!),
                        icon: const Icon(
                          Icons.west,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (value) => model.updateQuestion(value),
                        itemCount: model.baseQuestion.questionLength,
                        controller: controller,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              QuestionWidget(
                                currentQuestion: model.currentQuestion,
                                totalQuestion:
                                    model.baseQuestion.questionLength,
                                question: model.question.toString(),
                                // 'Which of this is true about Real Estate Management  '
                                // 'and Investment in the year 1844 and accepted by over 200 Countries in '
                                // 'our modern age and time',
                              ),
                              model.options == null
                                  ? Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Type your answer here',
                                          ),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: List.generate(
                                        model.optionLength ?? 0,
                                        (optionIndex) => OptionBox(
                                          text: model.options![optionIndex],
                                          isAnswered: model.isAnswered!,
                                          onPress: () => model.updateChecked(
                                            model.baseQuestion
                                                .questionModel[optionIndex],
                                          ),
                                          // onPress: (){
                                          //   print('Hello');
                                          // },
                                        ),
                                      ),
                                    ),
                            ],
                          );
                        },
                      ),
                    ),
                    BaseButton(
                      onPress: () => model.nextQuestion(controller!),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// Future<bool> onWillPop(BuildContext context, {required QuestionScreenViewModel model, required PageController controller,}) async {
//    return (await (model.previousQuestion(controller)) Navigator.pop(context);) ??
//       false;
// }
