import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';

import 'order_confirmation_body.dart';

late _checkout_status_barState check_status_Bar ;
class checkout_status_bar extends StatefulWidget {
  const checkout_status_bar({Key? key}) : super(key: key);

  @override
  State<checkout_status_bar> createState() {
    check_status_Bar = _checkout_status_barState();
    return check_status_Bar;
  }
}

class _checkout_status_barState extends State<checkout_status_bar> {
  @override
  bool part_1 = false;
  bool part_2 = false;
  bool part_3 = false;
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
                  color: part_1 == true
                    ?ColorHelper.color[8]
                      :ColorHelper.color[1],
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
              color: part_1 == true
                  ?ColorHelper.color[8]
                  :ColorHelper.color[1],
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
                    color: part_2 == true
                        ?ColorHelper.color[8]
                        :ColorHelper.color[1],
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
              color: part_2 == true
                  ?ColorHelper.color[8]
                  :ColorHelper.color[1],
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
                    color: part_3 == true
                        ?ColorHelper.color[8]
                        :ColorHelper.color[1],
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
