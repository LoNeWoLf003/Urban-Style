import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urban_style/staful%20widgets/checkout_status_bar.dart';
import 'package:urban_style/staful%20widgets/order_confirmation_body.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../controllers/checkout/checkout_controller.dart';

class verify_first_page extends StatefulWidget {
  const verify_first_page({Key? key}) : super(key: key);

  @override
  State<verify_first_page> createState() => _verify_first_pageState();
}

class _verify_first_pageState extends State<verify_first_page> {
  @override
bool okay = false;
  bool process = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: ()async{
          Get.snackbar("Verifying Please Wait ... ", "Verifying Please Wait few seconds" );
          setState(() {
            process = true;
          });
          var status = checkout_controller.verify_all();
          Future.delayed(Duration(seconds: 15),(){
            if(status == "Okay"){
              setState(() {
                okay = true;
              });
              check_status_Bar.setState(() {
                check_status_Bar.part_1 = true;
              });
              checkout_bodY.setState(() {
                checkout_bodY.index = 1;
              });
            }else{
              setState(() {
                process = false;
              });
            }
          });
        },
        child: Container(
          height: 70,
          width: okay == true ?70 :double.infinity,
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
            child: process
                ? CircularProgressIndicator(color: ColorHelper.color[0],)
                : okay == true
                ? Icon(IconHelper.icons[11])
                :Text(
              "Save",
              style: TextStyle(color: ColorHelper.color[0]),
            ),
          ),
        ),
      ),
    );
  }
}
