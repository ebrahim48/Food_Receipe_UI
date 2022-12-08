import 'package:flutter/material.dart';
class ReuseableColumn extends StatelessWidget {
  Color color;
  String imageString, txt;
  ReuseableColumn(
      {required this.color,
      required this.imageString,
      required this.txt,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageString),
            SizedBox(
              height: 5,
            ),
            Text(
              txt,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
