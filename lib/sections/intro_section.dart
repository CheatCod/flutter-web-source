import 'package:flutter/material.dart';
import 'package:flutter_website/views/centered.dart';
import 'package:flutter_website/widgets/logo_intro.dart';
import 'package:flutter_website/widgets/main_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 1.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MainTitle(),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 11.29,
                ),
                child: Transform.rotate(
                  angle: -.47,
                  child: IntroLogo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
