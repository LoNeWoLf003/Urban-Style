import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';
import 'package:urban_style/widgets/check_everything_assign.dart';
import 'package:urban_style/widgets/checkout/payment_fail.dart';
import 'package:urban_style/widgets/payment_success.dart';

import '../../staful widgets/checkout/payment_options.dart';
import '../../staful widgets/order_confirmation_body.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: SlideAction(
        //       onSubmit: (){
        //
        //       },
        //       sliderButtonIcon: Icon(IconHelper.icons[25]),
        //       borderRadius: 12,
        //       text: "Cash on Delivery",
        //       textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
        //       outerColor: ColorHelper.color[9]
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SlideAction(
              onSubmit: (){
                void _handlePaymentSuccess(PaymentSuccessResponse response) {
                  print("Payment Sucessfull proceeding to process page");
                  checkout_controller.is_payment_done = true;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => check_ok()));
                }

                void _handlePaymentError(PaymentFailureResponse response) {
                  print("Payment Failed proceeding to Failed Page");
                  checkout_controller.is_payment_done = false;
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Payment_Failed()));

                }

                void _handleExternalWallet(ExternalWalletResponse response) {
                  Get.snackbar("Payment Failed.", "Payment Failed. Try Again");
                  Navigator.pop(context);
                }
                checkout_controller.razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
                checkout_controller.razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
                checkout_controller.razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

                checkout_controller.prducts = "${checkout_bodY.widget.products.length}";
                checkout_controller.amount = "${checkout_bodY.widget.price}";
                checkout_controller().open_payment_page();

              },
              sliderButtonIcon: Image.asset(IconHelper.assets_image[0],height: 25,width: 25,fit: BoxFit.fill,),
              borderRadius: 12,
              text: "Pay using Razorpay",
              textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
              outerColor: ColorHelper.color[3]
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SlideAction(
              onSubmit: (){
                checkout_controller.is_payment_done = true;
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => check_ok()));
                },
              sliderButtonIcon: Icon(IconHelper.icons[30],color: ColorHelper.color[0],),
              borderRadius: 12,
              text: "Cash on Delivery",
              textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
              innerColor: ColorHelper.color[2],
              outerColor: ColorHelper.color[8]
          ),
        ),
        //
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: SlideAction(
        //       onSubmit: (){
        //
        //       },
        //       sliderButtonIcon: Image.asset(IconHelper.assets_image[1],height: 25,width: 25,fit: BoxFit.fill,),
        //       borderRadius: 12,
        //       text: "Pay using Stripe",
        //       textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
        //       outerColor: ColorHelper.color[5]
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: SlideAction(
        //       onSubmit: (){
        //
        //       },
        //       sliderButtonIcon: Image.asset(IconHelper.assets_image[2],height: 25,width: 25,fit: BoxFit.fill,),
        //       borderRadius: 12,
        //       text: "Pay using Braintee",
        //       textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
        //       outerColor: ColorHelper.color[2]
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: SlideAction(
        //       onSubmit: (){
        //
        //       },
        //       sliderButtonIcon: Image.asset(IconHelper.assets_image[3],height: 25,width: 25,fit: BoxFit.fill,),
        //       borderRadius: 12,
        //       text: "Pay using Google Pay",
        //       textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
        //       outerColor: ColorHelper.color[4]
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: SlideAction(
        //       onSubmit: (){
        //
        //       },
        //       sliderButtonIcon: Image.asset(IconHelper.assets_image[4],height: 25,width: 25,fit: BoxFit.fill,),
        //       borderRadius: 12,
        //       text: "Pay using Phone Pay",
        //       textStyle: TextStyle(fontSize: 16,color: ColorHelper.color[0]),
        //       outerColor: ColorHelper.color[11]
        //   ),
        // )
      ],
    );
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       Padding(padding: EdgeInsets.all(18),
    //       child: Align(
    //         alignment: Alignment.centerLeft,
    //         child: Text("Choose your payment method",style: TextStyle(
    //           fontSize: 20,
    //           color: ColorHelper.color[1],
    //           fontWeight: FontWeight.bold
    //         ),),
    //       ),
    //       ),
    //       payment_options(),
    //
    //     ],
    //   ),
    // );
  }
}







Widget previous_design(){
  return Column(
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
      // if(context.isPhone)
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SlideAction(
              onSubmit: (){
                print("Opening Razorpay");

                checkout_controller.prducts = "${checkout_bodY.widget.products.length}";
                checkout_controller.amount = "${checkout_bodY.widget.price}";
                checkout_controller().open_payment_page();
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
  );
}