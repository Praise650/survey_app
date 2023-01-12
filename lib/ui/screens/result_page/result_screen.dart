import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:survey_app/core/models/option_model.dart';
import 'package:survey_app/ui/layouts/base_scaffold.dart';
import 'package:survey_app/ui/styles/dimens.dart';
import 'package:survey_app/ui/widgets/buttons/base_button.dart';

import '../../styles/deorations.dart';
import 'view_model/result_screen_view_model.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, this.result}) : super(key: key);
  final List<OptionModel>? result;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  // PageController? controller;

  @override
  initState() {
    super.initState();
    // controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ResultScreenViewModel>(
      builder: (context, model, child) => SafeArea(
        child: BaseScaffold(
          body: Container(
            padding: Dimens.screenPadding,
            decoration: appBgDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Result',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                    widget.result!.length,
                    (index) => Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '${index + 1}.',
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                widget.result![index].text.toString(),
                                softWrap: true,
                                style: const TextStyle(
                                  fontSize: 34,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BaseButton(
                  onPress: () => model.navigateToHomePage(context),
                  text: "Go to Homepage",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
