import 'package:carousel_slider/carousel_slider.dart';
import 'package:fc/MyWidgets/SliderWidget.dart';
import 'package:fc/models/Model.dart';
import "package:flutter/material.dart";

class SliderImage extends StatelessWidget {
  const SliderImage({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final List<Model> imgList = [
      Model("https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",  "Arman Ananaya" ),
      Model('https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80', "Artak Ananaya")
    ];

    return Container(
          height: 300,
          color: Colors.transparent,
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true
            ),
            items: imgList.map((item) =>
                SliderWidget(model: item,)
            ).toList(),
          )
        );
  }

}

