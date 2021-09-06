import 'package:fc/MyWidgets/SliderImage.dart';
import 'package:fc/constats/Constants.dart';
import 'package:flutter/material.dart';

class SearchText extends StatefulWidget {
  const SearchText({Key? key}) : super(key: key);

  @override
  _SearchTextState createState() => _SearchTextState();
}

class _SearchTextState extends State<SearchText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color:black,
      ),
      padding: EdgeInsets.only(right: 240),
      height: 50,
      child: Row(
        children: [
          Expanded(
              child: Icon(
                  Icons.search,
                color: Colors.orange,
              )
          ),
          Expanded(
              child:Text(
                "Search",
                style: TextStyle(
                  color: white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),
              ),
          ),

        ],
      ),
    );
  }
}
