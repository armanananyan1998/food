import 'package:flutter/material.dart';

class WelcomeScreenButoon extends StatelessWidget {
  const WelcomeScreenButoon({
    Key? key,
    required this.text,
    required this.color1,
    required this.color2,
  }) : super(key: key);
  final String text;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.all(Radius.circular(100.0))),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
