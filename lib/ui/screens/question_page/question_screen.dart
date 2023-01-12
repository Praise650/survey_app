import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';
import 'package:survey_app/ui/widgets/input.dart';

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
            if (model.questionNumber != 0) {
              return await model.previousQuestion(controller!);
            } else if (model.questionNumber == 0) {
              return await showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text("Do you want to quit soorvaay"),
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
                          color: model.currentQuestionNumber == 1
                              ? Colors.grey
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton.icon(
                        onPressed: () => model.previousQuestion(controller!),
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (value) => model.updateQuestion(value),
                        itemCount: model.questionLength,
                        controller: controller,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              QuestionWidget(
                                currentQuestion: model.currentQuestionNumber,
                                totalQuestion: model.questionLength,
                                model: model.questions[index],
                              ),
                              model.questions[index].options == null
                                  ? Expanded(child: GeneralInput(model: model))
                                  : OptionWidget(
                                      question: model.questions[index],
                                      // model: model,
                                    ),
                            ],
                          );
                        },
                      ),
                    ),
                    BaseButton(
                      bgColor: Colors.white,
                      onPress: () => model.nextQuestion(controller!, context),
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
