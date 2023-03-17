import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';

import '../constrants/color.dart';

class verify_phone extends StatefulWidget {
  const verify_phone({Key? key}) : super(key: key);

  @override
  State<verify_phone> createState() => _verify_phoneState();
}

class _verify_phoneState extends State<verify_phone> {
  @override
  bool clicked = false;
  bool send_otp = false;
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        setState(() {
          clicked = true;
        });
        Future.delayed(Duration(seconds: 4),(){
          setState(() {
            send_otp = true;
          });
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 70,
        width: clicked ? send_otp ?120 :70 : double.infinity,
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
          child: clicked
              ? send_otp
          ? Row(
            children: [
              SizedBox(width: 13,),
              Text("Otp Send ",style: TextStyle(color: ColorHelper.color[0]),),
              Icon(IconHelper.icons[11],color: ColorHelper.color[0],)
            ],
          )
          :Center(
            child: CircularProgressIndicator(color: ColorHelper.color[0],),
          )
              :Text(
            "Verify Phone Number",
            style: TextStyle(color: ColorHelper.color[0]),
          ),
        ),
      ),
    );
  }
}
