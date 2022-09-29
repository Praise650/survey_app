import 'package:flutter/material.dart';

class SurveyTypeWidget extends StatelessWidget {
  final String url;
  final String? label;
  final String? subtitle;
  final Function()? onPress;

  const SurveyTypeWidget({
    Key? key,
    required this.url,
    this.label,
    this.subtitle,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(2, 4),
                blurRadius: 1,
                spreadRadius: 1)
          ],
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 2),
        child: Row(
          children: [
            Image.network(
              url,
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label ?? 'Survey',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle ?? 'Take a survey',
                  softWrap: true,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
