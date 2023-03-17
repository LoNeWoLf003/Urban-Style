import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';

import 'order_confirmation_body.dart';

class checkout_status_bar extends StatefulWidget {
  const checkout_status_bar({Key? key}) : super(key: key);

  @override
  State<checkout_status_bar> createState() => _checkout_status_barState();
}

class _checkout_status_barState extends State<checkout_status_bar> {
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28,left: MediaQuery.of(context).size.width * 0.30/4,right: 18),
      child: Center(
        child: Row(
          children: [
            InkWell(
              onTap: (){
                checkout_bodY.setState(() {
                  checkout_bodY.index = 0;
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: ColorHelper.color[1],
                  borderRadius: BorderRadius.all(Radius.circular(60))
                ),
                child: Center(
                  child: Icon(IconHelper.icons[12],color: ColorHelper.color[0],),
                ),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 1.1/4,
              color: ColorHelper.color[1],
            ),
            InkWell(
              onTap: (){
                checkout_bodY.setState(() {
                  checkout_bodY.index = 1;
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: ColorHelper.color[1],
                    borderRadius: BorderRadius.all(Radius.circular(60))
                ),
                child: Center(
                  child: Icon(IconHelper.icons[23],color: ColorHelper.color[0],),
                ),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 1.1/4,
              color: ColorHelper.color[1],
            ),
            InkWell(
              onTap: (){
                checkout_bodY.setState(() {
                  checkout_bodY.index = 2;
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: ColorHelper.color[1],
                    borderRadius: BorderRadius.all(Radius.circular(60))
                ),
                child: Center(
                  child: Icon(IconHelper.icons[24],color: ColorHelper.color[0],),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
