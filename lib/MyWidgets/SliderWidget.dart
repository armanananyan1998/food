import 'package:fc/models/Model.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key,
   required this.model
  }) : super(key: key);

  final Model model;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(model.uri),
          Padding(padding: EdgeInsets.only(left: 185, top: 180),
            child: Text(model.title,
            style: TextStyle(
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}
