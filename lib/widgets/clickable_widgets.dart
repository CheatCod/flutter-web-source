import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter/rendering.dart';

class Clickable extends StatelessWidget {
  final Widget child;
  final Function onClick;
  Clickable({this.child, this.onClick});
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: child,
        onTap: onClick,
      ),
    );
  }
}
