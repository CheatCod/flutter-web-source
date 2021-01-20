import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_website/widgets/clickable_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_website/views/home.dart';
import 'dart:js' as js;
import 'dart:html' as html;

class NavBar extends StatefulWidget {
  final double opacity;

  NavBar({this.opacity});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final String resumeURL =
      "https://github.com/CheatCod/flutter-web/blob/main/Peter%20Jiang%20Resume%20CS.pdf";
  HomeState home;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black.withOpacity(widget.opacity),
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1600),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Clickable(
                child: Text(
                  "C",
                  style: TextStyle(
                    fontFamily: 'Double',
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                onClick: HomeState.scrollHandler(0),
              ),
              Row(
                children: <Widget>[
                  _NavBarItem(
                    text: "About Me",
                    onClick: HomeState.scrollHandler(1),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 12,
                  ),
                  _NavBarItem(
                    text: "Projects",
                    onClick: HomeState.scrollHandler(2),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 12,
                  ),
                  _NavBarItem(
                      text: "Resume",
                      onClick: () {
                        html.window.open(resumeURL, 'PlaceholderName');
                      }),
                ],
              ),
            ],
          ),
        ));
  }
}

class _NavBarItem extends StatelessWidget {
  final String text;
  final Function onClick;
  // ignore: avoid_init_to_null
  _NavBarItem({this.text, this.onClick = null});
  Widget build(BuildContext context) {
    return Clickable(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          text,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w300,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      onClick: onClick,
    );
  }
}
