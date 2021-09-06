import 'package:fc/constats/Constants.dart';
import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

import 'WelcomeScreen.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({Key? key}) : super(key: key);

  @override
  _SlideScreenState createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        key: _globalKey,
        body: Container(
          color: backgroundColor,
          child: SKOnboardingScreen(
              bgColor: backgroundColor,
              themeColor: orange,
              pages: pages,
              skipClicked: (value) {
                scanerr();
              },
              getStartedClicked: (value) {
                scanerr();
              }),
        ));
  }

  final pages = [
    SkOnboardingModel(
        title: 'Live your life smarter',
        description:
            'Lorem ipsum sit amet, cosect adipiscig elit, sed do eiusmod tempor incididunt ut labore et.',
        titleColor: white,
        descripColor: whiteDark,
        imagePath: 'assets/caffe.png'),
    SkOnboardingModel(
        title: 'Live your life smarter',
        description:
            'Lorem ipsum sit amet, cosect adipiscig elit, sed do eiusmod tempor incididunt ut labore et.',
        titleColor: white,
        descripColor: whiteDark,
        imagePath: 'assets/background.png'),
    SkOnboardingModel(
        title: 'Live your life smarter',
        description:
            'Lorem ipsum sit amet, cosect adipiscig elit, sed do eiusmod tempor incididunt ut labore et.',
        titleColor: white,
        descripColor: whiteDark,
        imagePath: 'assets/slider.jpg'),
  ];

  scanerr() {
         Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WelcomeScreen()));
  }

}
