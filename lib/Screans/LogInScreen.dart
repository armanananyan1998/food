import 'package:fc/MyWidgets/SearchText.dart';
import 'package:fc/MyWidgets/SliderImage.dart';
import 'package:fc/constats/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                width: 2000,
                height: 5000,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.black, Colors.yellowAccent],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(3.0, 0.0),
                      stops: [0.0, 1.0, 9.0],
                      tileMode: TileMode.clamp),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery
                      .of(context)
                      .size
                      .width / 5,
                ),
                child: Text(
                  "Hello Alex",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                ),
                child: SearchText(),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .width / 2.4,
                  ),
                  child: SliderImage()),
              //
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Expanded(
              //         child: Text(
              //           "Categories",
              //           style: TextStyle(
              //             color: white,
              //           ),
              //         )),
              //     Expanded(
              //       child: Align(
              //         alignment: Alignment.topRight,
              //         child: Text(
              //           "see All",
              //           style: TextStyle(color: Colors.white12),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ));
  }
}