import 'package:flutter/material.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/layouts/base_scaffold_body.dart';
import 'package:survey_app/ui/widgets/survey_type_widget.dart';

import '../../../Navigation/route.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: use trivia api for questions
    const String url =
        "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/3/21/1395401774125"
        "/Lorem-ipsum-011.jpg?width=620&quality=85&fit=max&s=48a5c92436d831392306b23d62875a7c";
    return SafeArea(
      child: BaseScaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.deepPurple],
            ),
          ),
          child: BaseScaffoldBody(
            child: Column(
              children: [
                const SizedBox(height: 50),
                SurveyTypeWidget(
                  url: url,
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
                const SurveyTypeWidget(
                  url: url,
                  label: 'Quiz',
                  subtitle: 'Answer questions to test your knowledge',
                ),
                SurveyTypeWidget(
                  url: url,
                  label: 'Health',
                  subtitle:
                      'Answer questions related to Health to test your knowledge',
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
                SurveyTypeWidget(
                  url: url,
                  label: 'Sport',
                  subtitle:
                      'Answer questions related to Sports to test your knowledge',
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
                SurveyTypeWidget(
                  url: url,
                  label: 'Finance',
                  subtitle:
                      'Answer questions related to Finance to test your knowledge',
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
                SurveyTypeWidget(
                  url: url,
                  label: 'Entertainment',
                  subtitle:
                      'Answer questions related to entertainment to test your knowledge',
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
                SurveyTypeWidget(
                  url: url,
                  label: 'Entertainment',
                  subtitle:
                      'Answer questions related to entertainment to test your knowledge',
                  onPress: () => Navigator.popAndPushNamed(
                    context,
                    RouteManager.questionPage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
