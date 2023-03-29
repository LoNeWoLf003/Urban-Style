import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/staful%20widgets/checkout_status_bar.dart';
import 'package:urban_style/widgets/checkout/packging.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../staful widgets/order_confirmation_body.dart';
import '../../widgets/checkout/location.dart';
import '../../widgets/checkout/payment.dart';

class order_confirmation extends StatelessWidget {
  order_confirmation({Key? key, required this.products}) : super(key: key);
final List products ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.color[0],
      body : Column(
        children: [
          SafeArea(child: Padding(
            padding: const EdgeInsets.only(top: 18,left: 10),
            child: Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(IconHelper.icons[7],)),
                Text("Checkout")
              ],
            ),
          ),),
          checkout_status_bar(),
          SizedBox(height: 10,),
          Expanded(child: order_confirmation_body(products : products))

        ],
      )
    );
  }
}
