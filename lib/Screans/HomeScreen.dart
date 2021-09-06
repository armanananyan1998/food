import 'package:fc/MyWidgets/CategoriaText.dart';
import 'package:fc/MyWidgets/CategoriesListView.dart';
import 'package:fc/MyWidgets/ItemListView.dart';
import 'package:fc/MyWidgets/PapularListView.dart';
import 'package:fc/MyWidgets/SearchText.dart';
import 'package:fc/MyWidgets/SliderImage.dart';
import 'package:fc/constats/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:  Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          black,
                          black,
                          Colors.black38,
                          Colors.black12,
                        ],
                        end: const Alignment(0.0, -1),
                        begin: const Alignment(0.0, 0.6),
                        tileMode: TileMode.clamp),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2,
                        left: 20,
                        right: 20),
                    child:  returnColumn(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 5,
                      left: 20,
                      right: 20),
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
                    left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.width / 3,
                  ),
                  child: SearchText(),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 2.4,
                    ),
                    child: SliderImage()),
              ],
            ),
          ),
        )

    );
  }

  returnColumn(){
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CategoriaText(
          text: "Categories",
        ),
        SizedBox(
          height: 20,
        ),
        CategoriesListView(),
        SizedBox(
          height: 20,
        ),
        CategoriaText(
          text: "Near You",
        ),
        SizedBox(
          height: 20,
        ),
        ItemListView(),
        CategoriaText(
          text: "Papuliar",
        ),

        PapularListView(),
      ],
    );
  }
}
