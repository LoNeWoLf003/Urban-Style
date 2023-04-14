import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/staful%20widgets/order_confirmation_body.dart';
import 'package:urban_style/user/user.dart';

import '../controllers/checkout/checkout_controller.dart';
import '../pages/my_orders/my order.dart';

class payment_success extends StatelessWidget {
  const payment_success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("////////////////////////////////////////////////////////////////");
    print("////////////////////////////////////////////////////////////////");
    print(checkout_bodY.widget.products.length);
    for (var number in checkout_bodY.widget.products) {
      var title = number["title"];
      var des = number["des"];
      var price = number["price"];
      var image = number["image"];
      var stock = number["stock"];
      var lat = number["lat"];
      var long = number["long"];
      var cat = number["cat"];
      var size = number["size"];
      var token = number["token"];
      user.my_orders.add({"title" : title , "des" : des , "price" : price , "image" : image , "stock" : stock , "lat" : lat , "long" : long,"cat" : cat , "size" : size , "token" : token });
    }

    checkout_controller().update_my_orders();
    checkout_bodY.widget.products = [];

    return Scaffold(
      backgroundColor: ColorHelper.r_g_b[8],
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SafeArea(child: InkWell(
                  onTap: (){
                    user.new_order = true;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => my_order()));
                  },
                  child: Text("< Go to My Orders",style: TextStyle(color: ColorHelper.color[0]),))),
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
                child: InkWell(
                    onTap: (){
                      user.new_order = true;
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => my_order()));

                    },
                    child: Text("Go to My Orders",style: TextStyle(color: ColorHelper.r_g_b[8]),)),
              ),
            ),
          )
        ],
      )
    );
  }
}
