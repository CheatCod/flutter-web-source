import 'package:flutter/material.dart';
import 'package:flutter_website/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectItem extends StatelessWidget {
  final String title, subtitle;
  Image image = Image.network(
      "https://media.discordapp.net/attachments/483152207676571649/800283095085088778/unknown.png?width=309&height=165");
  ProjectItem({this.title, this.subtitle, this.image});

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
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: image,
          ),
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
