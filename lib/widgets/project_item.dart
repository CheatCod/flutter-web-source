import 'package:flutter/material.dart';
import 'package:flutter_website/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectItem extends StatelessWidget {
  final String title, subtitle, imageLink;
  ProjectItem(
      {this.title, this.subtitle, this.imageLink = 'assets/psw-manager.jpg'});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 4.5,
      width: (size.width < screenCritPoint)
          ? size.width - size.width / 5
          : size.width / 5,
      margin: EdgeInsets.all(size.width / 40),
      decoration: new BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageLink),
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
            bottom: 15,
            left: 15,
            child: Container(
              width: (size.width < screenCritPoint)
                  ? size.width - size.width / 5
                  : size.width / 5,
              padding: EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.gothicA1(
                      //title
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5, // seperation between title and sub
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.montserrat(
                      //subtitle
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
