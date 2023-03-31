import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/controllers/engine/engine_controller.dart';
import 'package:urban_style/main.dart';
import 'package:urban_style/widgets/my_order_info.dart';

import '../constrants/color.dart';
import '../staful widgets/order_confirmation_body.dart';
import '../user/user.dart';

var loc ;
class my_order_card extends StatelessWidget {
  my_order_card(
      {Key? key,

      required this.index})
      : super(key: key);


  int index;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        engine_controller.extract_location(user.my_orders[index]["lat"], user.my_orders[index]["long"]);
        Future.delayed(Duration(seconds: 4),(){
          print(user.my_orders[index]["title"]);
          print(user.my_orders[index]["price"]);
          print(user.my_orders[index]["des"]);
          print(user.my_orders[index]["lat"]);
          print(user.my_orders[index]["long"]);
          print(user.my_orders[index]["stock"]);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => my_order_info(image: user.my_orders[index]["image"], name: user.my_orders[index]["title"], price: user.my_orders[index]["price"], description: user.my_orders[index]["des"], lat: user.my_orders[index]["lat"], long: user.my_orders[index]["long"], stock: user.my_orders[index]["stock"], location: loc)));

        });
        },
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: ColorHelper.r_g_b[7],

        ),
        child: Row(
          children: [
            SizedBox(width: 8,),
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    color: ColorHelper.color[3].withOpacity(0.40)
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                        color: ColorHelper.color[3].withOpacity(0.85)
                    ),
                    child: Center(
                        child: user.is_login
                            ?Image.memory(base64Decode(user.my_orders[index]["image"]),fit: BoxFit.fill,)
                            :Image.memory(user.my_orders[index]["image"],fit: BoxFit.fill,)
                    ),
                  ),
                )
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                      width: double.infinity,
                      child: Text("${user.my_orders[index]["title"]}",style: TextStyle(fontSize: 15,color: ColorHelper.color[2]),overflow: TextOverflow.ellipsis,)),
                  SizedBox(height: 10,),
                  Container(
                      width: double.infinity,
                      child: Text("${user.my_orders[index]["price"]}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
