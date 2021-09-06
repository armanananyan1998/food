import 'package:fc/constats/Constants.dart';
import 'package:fc/models/Model.dart';
import 'package:flutter/material.dart';
class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Model> list = [
      Model("assets/dinner.png", "Dinner"),
      Model("assets/lunch.png", "Luch"),
      Model("assets/breakfast.png", "Breakfast"),
      Model("assets/caffe.png", "Caffe"),
    ];

    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index){
          return CategoriesContainer(list[index]);
        },
      ),
    );
  }

  CategoriesContainer(Model model){
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [black, Colors.black],
                begin: const Alignment(0.0,-1),
                end: const Alignment(0.0, 4)
              ),
              boxShadow: [
                BoxShadow(
                  color: backgroundColor,
                  spreadRadius: 2,
                  offset: Offset(0,0)
                )
              ]
            ),
            width: 100,
            height: 100,
            child: Center(
              child: Image(
                height: 40,
                width: 40,
                color: Colors.white,
                image: AssetImage(
                  model.uri,
                ),
              )
            ),
          ),
         Container(
           margin: EdgeInsets.only(right: 25, top: 8),
           child:  Text(
             model.title,
             style: TextStyle(color: whiteDark.withOpacity(0.6),
             fontWeight: FontWeight.bold,
               fontSize: 16
             ),
           ),
         )
        ],
      ),
    );
  }
}
