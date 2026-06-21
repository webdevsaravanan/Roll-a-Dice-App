import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final Color fontColor;
  const CustomTextStyle(this.text,this.fontColor, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        color: fontColor
      ),
    );
  }
}