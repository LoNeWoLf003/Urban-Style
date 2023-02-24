import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';

Widget gradient_button(text , context){
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: ColorHelper.color[1],
          blurRadius: 10.0
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(60)),
      gradient: LinearGradient(colors: [ColorHelper.mixture[0] , ColorHelper.mixture[1] , ColorHelper.mixture[2] , ColorHelper.mixture[3]])
    ),
    child: Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorHelper.color[0].withOpacity(0.30),
      child: Center(
        child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ColorHelper.color[0] , letterSpacing: 1.5),),
      ),
    ),
  );
}