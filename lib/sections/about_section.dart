import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_website/widgets/project_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class About extends StatelessWidget {
  List<Widget> projectChildren = [
    ProjectItem(
      title: "Password Manager",
      subtitle: "An offline, AES secured password manager built in Java",
    ),
    ProjectItem(
      title: "Covid-19 App",
      subtitle: "Simple and easy to use covid tracker",
      imageLink: "assets/covid19-app.png",
    ),
    ProjectItem(
      title: "Note.Working",
      subtitle: "Smart calculator app aims to help student with math problems",
      imageLink: "assets/noteworking.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Color(0xFF241E30),
      height: (size.width < screenCritPoint)
          ? size.height + 500
          : size.height + 200,
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Container(
                height: 7,
                width: 70,
                color: Colors.white,
              ),
              SizedBox(height: 15),
              SelectableText(
                "About me",
                textAlign: TextAlign.center,
                style: GoogleFonts.gothicA1(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 552,
                height: 231,
                margin: EdgeInsets.only(left: 30, right: 30),
                child: SelectableText(
                  "Currently a CS student at the University of Waterloo, I am a technology enthusiast. I enjoy utilizing technology to solve practical problems, and have done so with my various software projects. \n\nI also consider myself a creative person, with a special interest in motion graphics. Having been multiple design leads, I hope to combine my creativity and technology to bring something truly unique to this world.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.hind(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Column(
            children: [
              Container(
                height: 7,
                width: 70,
                color: Colors.white,
              ),
              SizedBox(height: 15),
              SelectableText(
                "Projects",
                textAlign: TextAlign.center,
                style: GoogleFonts.gothicA1(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              (MediaQuery.of(context).size.width < 640)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: projectChildren)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: projectChildren,
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
