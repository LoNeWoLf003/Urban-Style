import 'package:flutter/cupertino.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/staful%20widgets/checkout/verify_second_page.dart';
import 'package:urban_style/staful%20widgets/order_confirmation_body.dart';
import 'package:urban_style/widgets/checkout/packaging_product_item_card.dart';

class packging extends StatelessWidget {
  packging({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Total Price - ₹${checkout_bodY.widget.price}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorHelper.r_g_b[3]),),
          )
        ),
        Expanded(
          child: ListView.builder(
              itemCount: checkout_bodY.widget.products.length,
              itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
                  child: packging_product_item_card(index),
                );
          }),
        ),
        verify_second_page()
      ],
    );
  }
}
