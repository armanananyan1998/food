import 'package:fc/constats/Constants.dart';
import 'package:flutter/material.dart';
class CategoriaText extends StatelessWidget {
  const CategoriaText({Key? key,
  required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "See all",
              style: TextStyle(
                  color: Colors.white54,
                fontSize: 16
              ),
            ),
          ),
        )
      ],
    );
  }
}
