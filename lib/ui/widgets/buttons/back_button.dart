import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
    required this.controller,
    required this.questionNumber,
    required this.onPress,
  }) : super(key: key);

  final PageController controller;
  final int questionNumber;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: questionNumber == 1 ? Colors.grey : Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: TextButton.icon(
        onPressed: () => onPress,
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
        label: const Text(
          'Previous',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
