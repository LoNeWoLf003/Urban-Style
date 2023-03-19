import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';

import '../../staful widgets/order_confirmation_body.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: TextStyle(
                color: ColorHelper.r_g_b[3],
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 500),
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('Slide to act'),
                  TypewriterAnimatedText('Slide any payment method to confirm your order'),

                ],
              ),
            ),
      ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
              onSubmit: (){

              },
              sliderButtonIcon: Icon(IconHelper.icons[25]),
              borderRadius: 12,
              text: "Cash on Delivery",
              textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
              outerColor: ColorHelper.color[9]
            ),
          ),
          if(context.isPhone)
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SlideAction(
                  onSubmit: (){
                    print("Opening Razorpay");
                    checkout_controller().open_razorpay("${checkout_bodY.widget.products.length} Proucts", "");
                  },
                  sliderButtonIcon: Image.asset(IconHelper.assets_image[0],height: 25,width: 25,fit: BoxFit.fill,),
                  borderRadius: 12,
                  text: "Pay using Razorpay",
                  textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
                  outerColor: ColorHelper.color[3]
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
                onSubmit: (){

                },
                sliderButtonIcon: Image.asset(IconHelper.assets_image[1],height: 25,width: 25,fit: BoxFit.fill,),
                borderRadius: 12,
                text: "Pay using Stripe",
                textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
                outerColor: ColorHelper.color[5]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
                onSubmit: (){

                },
                sliderButtonIcon: Image.asset(IconHelper.assets_image[2],height: 25,width: 25,fit: BoxFit.fill,),
                borderRadius: 12,
                text: "Pay using Braintee",
                textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
                outerColor: ColorHelper.color[2]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
                onSubmit: (){

                },
                sliderButtonIcon: Image.asset(IconHelper.assets_image[3],height: 25,width: 25,fit: BoxFit.fill,),
                borderRadius: 12,
                text: "Pay using Google Pay",
                textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
                outerColor: ColorHelper.color[4]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
                onSubmit: (){

                },
                sliderButtonIcon: Image.asset(IconHelper.assets_image[4],height: 25,width: 25,fit: BoxFit.fill,),
                borderRadius: 12,
                text: "Pay using Phone Pay",
                textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
                outerColor: ColorHelper.color[11]
            ),
          )
        ],
      ),
    );
  }
}
