import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';

Widget checkout_text_feild(title , hint_text , input_type , controller){
  return Padding(
    padding: const EdgeInsets.only(left: 18,right: 18),
    child: Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(title , style: TextStyle(color: ColorHelper.color[1]),),
            )),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorHelper.r_g_b[5],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: ColorHelper.r_g_b[6])
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextFormField(
                keyboardType: input_type == "Str" ? TextInputType.text : TextInputType.number,
                controller: controller,
                cursorColor: ColorHelper.color[2],
                style: TextStyle(color: ColorHelper.color[2]),
                decoration: InputDecoration.collapsed(
                  hintStyle: TextStyle(color: ColorHelper.color[1]),
                  hintText: hint_text,

                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}