import 'package:flutter/material.dart';
import 'package:flutter_website/views/home.dart';

void main() {
  runApp(MyApp());
}

// TODO add hero animation
// TODO use auto_anime for scrolling animation
// TODO lazyload

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Peter Jiang' Website",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}
