import 'package:flutter/material.dart';

class Centered extends StatelessWidget {
  final Widget child;
  Centered({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1600),
        child: child,
      ),
    );
  }
}
