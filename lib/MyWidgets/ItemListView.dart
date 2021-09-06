import 'package:fc/constats/Constants.dart';
import 'package:fc/models/Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final  List<Model> list = [
      Model("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7vbivKJDyaSbHSGQd2ORTNodAeN_wEJU-Gw&usqp=CAU", "The Cheeses Guide"),
      Model("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlXvr5xyK_OVEwoCH2tYsCu4DS9554575MfA&usqp=CAU","Garage  Bar Seafood")
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ItemContainer(list[index]);
        },
      ),
    );
  }

  ItemContainer(Model model) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [black, Colors.black],
                begin: const Alignment(0.0, -1),
                end: const Alignment(0.0, 4),
              )
            ),
            width: 165,
            height: 100,
            margin: EdgeInsets.only(right: 20),
            child: Center(
              child: Image(
                width: 160,
                height: 90,
                image: NetworkImage(
                  model.uri,
                ),
              ),
            ),

          ),
          Container(
            padding: EdgeInsets.only(right: 35,top: 5),
            child: Text(
              model.title,
              style: TextStyle(
                 color: whiteDark.withOpacity(0.6),
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),

    );
  }
}
