import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/question_page/view_model/question_screen_view_model.dart';

class GeneralInput extends StatefulWidget {
  const GeneralInput({
    Key? key,
    this.onChanged,
    this.validator,
    this.controller,
  }) : super(key: key);
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<GeneralInput> createState() => _GeneralInputState();
}

class _GeneralInputState extends State<GeneralInput> {
  @override
  Widget build(BuildContext context) {
    final model = context.read<QuestionScreenViewModel>();
    return TextFormField(
      controller: widget.controller,
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
      onChanged: widget.onChanged ?? (value) => model.saveTypedAnswer(value),
      validator: widget.validator ??
          (value) {
            if (value!.isEmpty) {
              return 'Please enter some text';
            } else {
              return null;
            }
          },
      // onEditingComplete: () {
      //   widget.model.saveAnswer(widget.model.answer);
      // },
    );
  }
}
