import 'package:flutter/material.dart';

class IntroLogo extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFDA44BB), Color(0xFF8921AA)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: 60,
              left: 30,
              child: Text(
                "C",
                style: TextStyle(
                  fontFamily: 'Single',
                  fontSize: 500,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              child: Text(
                "C",
                style: TextStyle(
                  fontFamily: 'Single',
                  fontSize: 500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
