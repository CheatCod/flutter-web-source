import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_website/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.width < screenCritPoint)
        ? Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    height: 7,
                    width: 70,
                    color: Colors.white,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Projects",
                    style: GoogleFonts.gothicA1(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 552,
                    height: 221,
                  ),
                ],
              ),
            ],
          )
        : Column(
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
                  Text(
                    "Projects",
                    style: GoogleFonts.gothicA1(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 552,
                    height: 221,
                  ),
                ],
              ),
            ],
          );
  }
}
