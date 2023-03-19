import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constrants/color.dart';
import '../checkout_status_bar.dart';
import '../order_confirmation_body.dart';

class verify_second_page extends StatefulWidget {
  const verify_second_page({Key? key}) : super(key: key);

  @override
  State<verify_second_page> createState() => _verify_second_pageState();
}

class _verify_second_pageState extends State<verify_second_page> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: InkWell(
          onTap: (){
            check_status_Bar.setState(() {
              check_status_Bar.part_2 = true;
            });
            checkout_bodY.setState(() {
              checkout_bodY.index = 2;
            });
          },
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(20)),
                color: ColorHelper.color[3],
                boxShadow: [
                  BoxShadow(
                      color: ColorHelper.color[3],
                      blurRadius: 20.0)
                ]),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(color: ColorHelper.color[0]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
