import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/pages/home/home.dart';

import '../../constrants/color.dart';

class Payment_Failed extends StatelessWidget {
  const Payment_Failed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home()), (route) => false);
    });
    return Scaffold(
      backgroundColor: ColorHelper.color[1].withOpacity(0.100),
      body: Column(
        children: [
          SizedBox(height: 100,),
          SafeArea(child: Center(child: Text("Payment Failed",style: TextStyle(fontSize: 24,),))),
          SizedBox(height: 40,),
          Center(child: Image.asset(assets.payment_failed,height: 204 , width: 284 , fit: BoxFit.fill,)),
          SizedBox(height: 100,),
          Center(child: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text("Payment Failed .. Please Wait While we Transfer you to Dashborad",style: TextStyle(fontSize: 18,color: ColorHelper.color[1]),textAlign: TextAlign.center),
          ))
        ],
      ),
    );
  }
}