import 'package:fc/constats/Constants.dart';
import 'package:fc/models/Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PapularListView extends StatelessWidget {
  const PapularListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Model> list = [
      Model("https://image.pngaaa.com/323/269323-middle.png",
          "The Cheeses Guide"),
      Model("https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/yvhbtedcdoiw4ikkws9e",
          "Garage Bar Seafood"),
      Model("https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/ntwumqyxk8gqpspshle6 ",
          "Spagheti Kilimanjaro"),
      Model("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe_Eg-NHrbdRQp3y4d4VEeK0OIWo62CW2rrg&usqp=CAU",
          "Gangtok Vegetable"),
      Model("https://image.pngaaa.com/323/269323-middle.png", "Soup Caikaki"),
    ];
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: list.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return PapuliarCotaier(list[index]);
            }));
  }

  PapuliarCotaier(Model model) {
    return Container(
      width: 150,
      height: 170,
      child: Row(
        children: [
         InkWell(
           onTap: (){

           },
           child:  Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                 gradient: LinearGradient(
                     colors: [black, Colors.black],
                     begin: const Alignment(0.0, -2),
                     end: const Alignment(0.0, 4)
                 )
             ),
             width: 125,
             height: 120,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(70),
               child: Image(
                 image: NetworkImage(model.uri),
               ),
             ),
           ),
         ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 15),
            child: Column(
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 18,
                    color: white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Icon(
                  Icons.location_on_sharp,
                ),
                Text("asa")
              ],
            ),
          )
        ],

      ),
    );
  }
}
