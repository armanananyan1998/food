import 'package:fc/constats/Constants.dart';
import 'package:flutter/material.dart';

class SplashScreenCenterTextIconBack extends StatelessWidget {
  const SplashScreenCenterTextIconBack({Key? key,
    required this.iconPath,
    required this.backgroundPath,
    required this.text,
  }) : super(key: key);

  final String iconPath;
  final String text;
  final String backgroundPath;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                backgroundPath
              ),
              fit: BoxFit.fill)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath,
              height: MediaQuery.of(context).size.width / 4,
              width: MediaQuery.of(context).size.width / 4,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(color: white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
