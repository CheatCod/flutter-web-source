import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  final String text;
  Title({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text),
      ],
    );
  }
}
