import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';

Widget text_feild(hint_text , icon , controller){
  return Container(
    height: 80,
    width: double.infinity,
    child: Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("$hint_text",style: TextStyle(letterSpacing: 1,fontSize: 15),)),
        TextFormField(
          controller: controller,
          style: TextStyle(letterSpacing: 1),
          cursorColor: ColorHelper.color[2],
          cursorHeight: double.infinity,
          cursorWidth: 2,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
            hintText: "$hint_text",
            hintStyle: TextStyle(letterSpacing: 1,color: ColorHelper.color[1])
          ),
        )
      ],
    ),
  );
}