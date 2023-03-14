import 'package:flutter/cupertino.dart';

import '../constrants/color.dart';

Widget message_card(message , type , context){
  return Padding(
    padding: type == "user"
    ? context == true
    ?const EdgeInsets.only(top: 18,bottom: 18,right: 18 , left: 150)
        :const EdgeInsets.only(top: 18,bottom: 18,right: 18 , left: 500)
    : context == true
    ?const EdgeInsets.only(top: 18,bottom: 18,right: 150 , left: 18)
        :const EdgeInsets.only(top: 18,bottom: 18,right: 500 , left: 18),
    child: Container(
      child: SingleChildScrollView(
        child: Container(
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(4)),
              gradient: LinearGradient(
                  colors: [ColorHelper.r_g_b[3], ColorHelper.r_g_b[4]])),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8,top: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "$message",
                    style: TextStyle(
                      color: ColorHelper.color[0],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}