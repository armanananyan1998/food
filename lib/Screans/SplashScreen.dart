import 'dart:async';

import 'package:fc/MyWidgets/SplashScreenCenterTextIconBack.dart';
import 'package:fc/Screans/SlideScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    timer(3);
    return Scaffold(
      body: SplashScreenCenterTextIconBack(
          backgroundPath: "assets/splash.png",
          iconPath: "assets/icon/icon.png",
          text: "FoodCourt"),
    );
  }

  timer(int seconds) {
    Timer(
        Duration(seconds: seconds),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SlideScreen())));
  }
}
