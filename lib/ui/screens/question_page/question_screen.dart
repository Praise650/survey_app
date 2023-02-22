import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';
import 'package:survey_app/ui/widgets/input.dart';

import '../../widgets/buttons/back_button.dart';
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
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionScreenViewModel>(
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: () async {
            if (model.questionNumber != 1) {
              return await model.previousQuestion(controller!);
            } else if (model.questionNumber == 1) {
              bool maybepop = false;
              return await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              backgroundColor: Colors.white,
                              title: const Text("Do you want to quit soorvaay"),
                              buttonPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              actions: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: const Text("No"),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    setState(() => maybepop = true);
                                  },
                                  child: const Text("Yes"),
                                )
                              ])) ??
                  maybepop;
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
                    // BackButtonWidget(
                    //   controller: controller!,
                    //   onPress:()=> model.previousQuestion(controller!),
                    //   questionNumber: model.questionNumber,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          color: model.questionNumber == 1
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
                        onPageChanged: (value) =>
                            model.updateQuestion = (value),
                        itemCount: model.questionLength,
                        controller: controller,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              QuestionWidget(
                                currentQuestion: index + 1,
                                totalQuestion: model.questionLength,
                                question: model.questionService
                                    .generalQuestions[index].question!,
                              ),
                              model.questionService.generalQuestions[index]
                                          .options ==
                                      null
                                  ? const Expanded(
                                      child: GeneralInput(
                                          // controller: model.answerController,
                                          ))
                                  : OptionWidget(
                                      question: model.questionService
                                          .generalQuestions[index],
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

// Future<bool> onWillPop(
//   QuestionScreenViewModel model,
// ) async {
//   if (model.questionNumber != 1) {
//     return await model.previousQuestion(controller!);
//   } else if (model.questionNumber == 1) {
//     bool maybepop = false;
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             backgroundColor: Colors.white,
//             title: const Text("Do you want to quit soorvaay"),
//             buttonPadding: const EdgeInsets.symmetric(horizontal: 20),
//             actions: [
//               InkWell(
//                 onTap: () => Navigator.pop(context),
//                 child: const Text("No"),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                   setState(() => maybepop = true);
//                 },
//                 child: const Text("Yes"),
//               )
//             ],
//           ),
//         ) ??
//         maybepop;
//   } else {
//     return false;
//   }
// }
}
