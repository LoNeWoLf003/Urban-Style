import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay/pay.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/staful%20widgets/checkout_status_bar.dart';
import 'package:urban_style/staful%20widgets/order_confirmation_body.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/check_everything_assign.dart';
import 'package:urban_style/widgets/gradient_button.dart';
import 'package:urban_style/widgets/payment_success.dart';

import '../../controllers/checkout/checkout_controller.dart';


class payment_options extends StatefulWidget {
  const payment_options({Key? key}) : super(key: key);

  @override
  State<payment_options> createState() => _payment_optionsState();
}

class _payment_optionsState extends State<payment_options> {
  @override
  bool is_cash_on_delivery = false;
  bool is_razorpay = false;
  bool is_stripe = false;
  final paymentItems = <PaymentItem>[];
  @override
  void initState() {
    paymentItems.add(PaymentItem(amount: "${checkout_bodY.widget.price}", label:"" , status: PaymentItemStatus.final_price));
    // TODO: implement initState
    super.initState();
  }
  final Future<PaymentConfiguration> _googlePayConfigFuture =
  PaymentConfiguration.fromAsset('gpay.json');


  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: ColorHelper.color[0],
        //   child: Row(
        //     children: [
        //       SizedBox(width: 18,),
        //       // 27
        //       InkWell(
        //         onTap: () {
        //           if (check_status_Bar.part_1 == true) {
        //             setState(() {
        //               is_cash_on_delivery = true;
        //               is_razorpay = false;
        //               is_stripe = false;
        //             });
        //           }
        //         },
        //         child: Container(
        //           height: 30,
        //           width: 30,
        //           child: is_cash_on_delivery == true ? Icon(
        //             IconHelper.icons[27], color: ColorHelper.color[4],) : Icon(
        //             IconHelper.icons[26], color: ColorHelper.color[1],),
        //         ),
        //       ),
        //       SizedBox(width: 10,),
        //       Text("Cash on delivery", style: TextStyle(
        //           color: is_cash_on_delivery
        //               ? ColorHelper.color[2]
        //               : ColorHelper.color[1], fontSize: 17),),
        //       Expanded(child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Icon(IconHelper.icons[25], size: 28,
        //             color: is_cash_on_delivery
        //                 ? ColorHelper.color[4]
        //                 : ColorHelper.color[1]),
        //       )),
        //       SizedBox(width: 18,)
        //     ],
        //   ),
        // ),
        // SizedBox(height: 10,),
        //
        // // Google Pay
        //
        // Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: ColorHelper.color[0],
        //   child: Row(
        //     children: [
        //       SizedBox(width: 18,),
        //       // 27
        //       InkWell(
        //         onTap: () {
        //           if (check_status_Bar.part_1 == true) {
        //             setState(() {
        //               is_cash_on_delivery = false;
        //               is_razorpay = true;
        //               is_stripe = false;
        //             });
        //           }
        //         },
        //         child: Container(
        //           height: 30,
        //           width: 30,
        //           child: is_razorpay == true ? Icon(
        //             IconHelper.icons[27], color: ColorHelper.color[4],) : Icon(
        //             IconHelper.icons[26], color: ColorHelper.color[1],),
        //         ),
        //       ),
        //       SizedBox(width: 10,),
        //       Text("Pay using Razorpay", style: TextStyle(
        //           color: is_razorpay ? ColorHelper.color[2] : ColorHelper
        //               .color[1], fontSize: 17),),
        //       Expanded(child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Icon(IconHelper.icons[24], size: 28,
        //             color: is_razorpay ? ColorHelper.color[4] : ColorHelper
        //                 .color[1]),
        //       )),
        //       SizedBox(width: 18,)
        //     ],
        //   ),
        // ),
        // SizedBox(height: 10,),
        //
        // // Phone Pay
        //
        // Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: ColorHelper.color[0],
        //   child: Row(
        //     children: [
        //       SizedBox(width: 18,),
        //       // 27
        //
        //     ],
        //   ),
        // ),
        // SizedBox(height: 50,),
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Padding(
        //       padding: const EdgeInsets.only(left: 18, right: 18),
        //       child: InkWell(
        //           onTap: () {
        //             if (is_razorpay == true) {
        //               if (context.isPhone) {
        //                 checkout_controller().open_razorpay(
        //                     checkout_bodY.widget.price, context);
        //                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => check_ok()));
        //
        //               } else {
        //                 Get.snackbar("Razorpay not available in Web", "Razorpay not available in Web. It will be fixed after some updates");
        //
        //           }
        //           }else if(is_cash_on_delivery == true){
        //
        //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => check_ok()));
        //             }
        //
        //           },
        //           child: gradient_button("Pay", context))
        //   ),
        // )
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: FutureBuilder<PaymentConfiguration>(
              future: _googlePayConfigFuture,
              builder: (context, snapshot) => snapshot.hasData
                  ? GooglePayButton(
                paymentConfiguration: snapshot.data!,
                paymentItems: paymentItems,
                type: GooglePayButtonType.buy,
                margin: const EdgeInsets.only(top: 15.0),
                onError: (data){
                  Get.snackbar("Payment Failed.", "Payment Failed. Try Again");
                  },
                onPaymentResult: (data){
                  print("data");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => check_ok()));
                },
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
                width: double.infinity,
              )
                  : const SizedBox.shrink()),
        ),
      ],
    );
  }
}
