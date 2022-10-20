import 'package:flutter/material.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/screens/homepage/homepage.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';

import '../../styles/deorations.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  PageController? controller;

  @override
  initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BaseScaffold(
        body: Container(
          padding: Dimens.screenPadding,
          decoration: appBgDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: List.generate(
                    10, (index) => const Text('List of answered questions')),
              ),
              const SizedBox(height: 20),
              BaseButton(
                onPress: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()));
                },
                text: "Go to Homepage",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Future<bool> onWillPop(BuildContext context, {required QuestionScreenViewModel model, required PageController controller,}) async {
//    return (await (model.previousQuestion(controller)) Navigator.pop(context);) ??
//       false;
// }
