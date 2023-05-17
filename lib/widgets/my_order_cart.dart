import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:urban_style/controllers/engine/engine_controller.dart';
import 'package:urban_style/main.dart';
import 'package:urban_style/widgets/my_order_info.dart';

import '../constrants/color.dart';
import '../staful widgets/order_confirmation_body.dart';
import '../user/user.dart';

var loc ;
class my_order_card extends StatelessWidget {
  my_order_card(
      {Key? key, required this.title, required this.price, required this.des, required this.lat, required this.long, required this.stock, required this.image, required this.quantity,

      })
      : super(key: key);

final title ;
final image ;
final price ;
final des ;
final quantity ;
final lat ;
final long ;
final stock ;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        EasyLoading.showProgress(0.30,status: "Opening ... ");
        engine_controller.extract_location(lat, long);
        EasyLoading.showProgress(0.70,status: "Opening ... ");
        Future.delayed(Duration(seconds: 4),(){
          EasyLoading.showProgress(0.90,status: "Opening ... ");
          print(title);
          print(price);
          print(des);
          print(lat);
          print(long);
          print(stock);
          EasyLoading.dismiss();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => my_order_info(image: image, name: title, price: price, description: des , lat : lat,long: long, stock: stock, location: loc)));

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
                        child: getImageWidget()
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
                      child: Text("${title}",style: TextStyle(fontSize: 15,color: ColorHelper.color[2]),overflow: TextOverflow.ellipsis,)),
                  SizedBox(height: 10,),
                  Container(
                      width: double.infinity,
                      child: Text("₹${price}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),
                  Container(
                      width: double.infinity,
                      child: Text("Quantity - ${quantity}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget getImageWidget() {
    try {
      return Image.memory(
        base64Decode(image["base64"]),
        fit: BoxFit.fill,
      );
    } catch (e) {
      return Image.memory(
        image,
        fit: BoxFit.fill,
      );
    }
  }

}
