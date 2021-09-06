import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  const EditText({Key? key,
    required this.controller,
    required this.backgroundColor,
    required this.textColor,
    required this.cursorColor,
    required this.labelColor,
    required this.labelText,
    required this.isPassword,
  }) : super(key: key);

  final TextEditingController controller;
  final Color backgroundColor;
  final Color textColor;
  final Color cursorColor;
  final Color labelColor;
  final String labelText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: backgroundColor,
      ),
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        style: TextStyle(color: textColor),
        cursorColor: cursorColor,
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
        labelStyle: TextStyle(color: labelColor,),
        labelText: labelText,
      )),
    );
  }
}
