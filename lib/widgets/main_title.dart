import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_website/widgets/clickable_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SelectableText(
            "Hi,\nI'm Peter Jiang.",
            style: GoogleFonts.gothicA1(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: SelectableText(
              "Student, Software Developer, MoGraph Designer",
              style: GoogleFonts.gothicA1(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Clickable(
                  child: Image(
                    image: AssetImage('assets/icons/github.png'),
                    width: 30,
                    height: 30,
                  ),
                  onClick: () {
                    js.context
                        .callMethod('open', ['https://github.com/CheatCod']);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Clickable(
                  child: Image(
                    image: AssetImage('assets/icons/linkedin.png'),
                    width: 30,
                    height: 30,
                  ),
                  onClick: () {
                    js.context.callMethod('open',
                        ['https://www.linkedin.com/in/peter-jiang-80524b16a/']);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Clickable(
                  child: Image(
                    image: AssetImage('assets/icons/email.png'),
                    width: 30,
                    height: 30,
                  ),
                  onClick: () {
                    js.context.callMethod('open',
                        ["mailto:peter.jiang@uwaterloo.ca?subject=Subject&"]);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Clickable(
                  child: Image(
                    image: AssetImage('assets/icons/instagram.png'),
                    width: 30,
                    height: 30,
                  ),
                  onClick: () {
                    js.context.callMethod(
                        'open', ["https://www.instagram.com/peterjiangg/"]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
