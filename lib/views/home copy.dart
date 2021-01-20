import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_website/constants.dart';
import 'package:flutter_website/sections/about_section.dart';
import 'package:flutter_website/sections/intro_section.dart';
import 'package:flutter_website/sections/projects_section.dart';
import 'package:flutter_website/views/centered.dart';
import 'package:flutter_website/widgets/main_title.dart';
import 'package:flutter_website/widgets/nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  final List<Widget> WidgetList = [
    Intro(),
    About(),
  ];

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
      //print(_scrollPosition);
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.20
        ? _scrollPosition / (screenSize.height * 0.40)
        : .5;
    //print(_opacity);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: <Widget>[
          ListView.builder(
            controller: _scrollController,
            itemBuilder: (BuildContext ctxt, int index) {
              if (index < WidgetList.length)
                return WidgetList[index];
              else
                return null;
            },
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: NavBar(
                    opacity: _opacity,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
