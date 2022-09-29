import 'package:flutter/material.dart';

class OptionBox extends StatelessWidget {
  final String? text;

  const OptionBox({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.green,
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text ?? 'NO OPTION'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    blurRadius: 1,
                    spreadRadius: 1)
              ],
            ),
            child: const CircleAvatar(
              radius: 10,
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
