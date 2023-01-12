import 'package:flutter/material.dart';
import 'package:survey_app/ui/screens/question_page/view_model/question_screen_view_model.dart';

import '../../core/models/option_model.dart';

class GeneralInput extends StatefulWidget {
  const GeneralInput({Key? key, required this.model}) : super(key: key);

  final QuestionScreenViewModel model;

  @override
  State<GeneralInput> createState() => _GeneralInputState();
}

class _GeneralInputState extends State<GeneralInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      onChanged: (value) {
        OptionModel _typedVale = OptionModel(text: value);
        setState(() => widget.model.answer = _typedVale);
      },
      // onEditingComplete: () {
      //   widget.model.saveAnswer(widget.model.answer);
      // },
    );
  }
}
