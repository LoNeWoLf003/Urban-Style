import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../constrants/color.dart';
import '../../staful widgets/order_confirmation_body.dart';
import '../../user/user.dart';

Widget packging_product_item_card(index){
  return Container(
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
                child: user.new_order
                    ?Image.memory(base64Decode(checkout_bodY.widget.products[index]["image"]["base64"]),fit: BoxFit.fill,)
                    :Image.memory(checkout_bodY.widget.products[index]["image"],fit: BoxFit.fill,)
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
                  child: Text("${checkout_bodY.widget.products[index]["title"]}",style: TextStyle(fontSize: 15,color: ColorHelper.color[2]),overflow: TextOverflow.ellipsis,)),
              SizedBox(height: 10,),
              Container(
                  width: double.infinity,
                  child: Text("₹${checkout_bodY.widget.products[index]["price"]}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),
              Container(
                  width: double.infinity,
                  child: Text("Quantity - ${checkout_bodY.widget.products[index]["quantity"]}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),

            ],
          ),
        ),
      ],
    ),
  );
}