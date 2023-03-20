import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';

class payment_success extends StatelessWidget {
  const payment_success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.r_g_b[8],
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("< Go to My Orders",style: TextStyle(color: ColorHelper.color[0]),),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(assets.payment_successfull)),
          Text("Order Confirmed",style: TextStyle(color: ColorHelper.color[0],fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text("Order Confirmed. Navigate to My Order to view your order details",style: TextStyle(color: ColorHelper.color[0]),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width:  double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                color: ColorHelper.color[0]
              ),
              child: Center(
                child: Text("Go to My Orders",style: TextStyle(color: ColorHelper.r_g_b[8]),),
              ),
            ),
          )
        ],
      )
    );
  }
}
