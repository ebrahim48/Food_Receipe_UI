import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  String startText, endText;
  ReusableWidget({
    required this.startText,
    required this.endText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          startText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          endText,
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
