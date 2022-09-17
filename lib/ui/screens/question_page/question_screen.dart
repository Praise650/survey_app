import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column();
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Previous'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Next'),
            ),
          ],
        )
      ],
    );
  }
}
