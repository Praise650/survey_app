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
                      decoration: BoxDecoration(
                          color: model.currentQuestion == 1
                              ? Colors.grey
                              : Colors.yellow,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton.icon(
                        onPressed: () => model.previousQuestion(controller!),
                        icon: const Icon(
                          Icons.chevron_left,
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
                              ),
                              model.options == null
                                  ? Column(
                                      children: [
                                        TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: 'Type your answer here',
                                            hintStyle: TextStyle(
                                              color: Colors.blue,
                                            ),
                                            fillColor: Colors.white,
                                            filled: true,
                                            labelText: 'Type your answer here',
                                            labelStyle: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          onSaved: (value) {
                                            setState(() => model.typedAnswer =
                                                value ?? 'Default Answer');
                                          },
                                        ),
                                      ],
                                    )
                                  : const OptionBox(),
                            ],
                          );
                        },
                      ),
                    ),
                    BaseButton(
                      onPress: () {
                        model.nextQuestion(controller!, context);
                        // model.saveAnswer();
                      },
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
