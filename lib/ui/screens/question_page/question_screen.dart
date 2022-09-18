import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //TODO: Add a linear progress indicator, delete later
        const LinearProgressIndicator(),
        Expanded(
          child: PageView.builder(
            itemCount: 10,
            onPageChanged: (index) {},
            pageSnapping: true,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column();
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Previous'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Next'),
            ),
          ],
        )
      ],
    );
  }
}
