import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';
import 'package:urban_style/controllers/engine/engine_controller.dart';
import 'package:urban_style/pages/accounts/sign%20up/sign%20up.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/pages/order_confirmation/order_confirmation.dart';
import 'package:urban_style/staful%20widgets/ring%20size.dart';

import '../constrants/color.dart';
import '../staful widgets/cart btn.dart';
import '../staful widgets/shirt_size.dart';
import '../staful widgets/shoe size.dart';
import '../user/user.dart';

class product_info extends StatelessWidget {
  const product_info(
      {Key? key,
      required this.title,
      required this.price,
      required this.image,
      required this.stock,
      required this.des,
      required this.lat,
      required this.open,
      required this.token,
      required this.long,
      this.cat,
      this.selected_size})
      : super(key: key);
  final title;

  final open;

  final token;

  final des;

  final price;

  final image;

  final stock;

  final lat;

  final long;

  final cat;

  final selected_size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Icon(IconHelper.icons[7]),
                  ),
                ),
                Text("Product info"),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => cart()));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(IconHelper.icons[6]),
                    ),
                  ),
                ))
              ],
            ),
          )),
          Container(
            child: stock == "In Stock"
                ? open == true
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Product expected to be delivered under ${engine_controller().calculate_minute(double.parse(lat), double.parse(long))} minutes",
                            style: TextStyle(color: ColorHelper.color[1]),
                          ),
                        ))
                    : Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "* shop is closed",
                            style: TextStyle(color: ColorHelper.color[4]),
                          ),
                        ))
                : Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "* out of stock",
                        style: TextStyle(color: ColorHelper.color[4]),
                      ),
                    )),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              // height: context.isPhone ? cat == null ? 320  : 200 : cat == null ? 320 : 240,
              width: context.isPhone ? double.infinity : 300,
              child: Image.memory(
                image,
                fit: context.isPhone ? BoxFit.fitHeight : BoxFit.fitHeight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: context.isPhone
                  ? cat == null
                      ? 220
                      : 320
                  : cat == null
                      ? 320
                      : 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorHelper.color[0],
                boxShadow: [
                  BoxShadow(
                      color: ColorHelper.color[1],
                      blurRadius: 10.0,
                      offset: Offset(-2, -2))
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: ColorHelper.r_g_b[3]),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            price,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: ColorHelper.r_g_b[3]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          des,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: ColorHelper.color[2]),
                        )),
                  ),
                  cat != null
                      ? SizedBox(
                          height: 15,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  // cat == "Rings" ?rings_size() : SizedBox(height: 0,),
                  cat == "T-Shirt"
                      ? shirt_size()
                      : SizedBox(
                          height: 0,
                        ),
                  cat == "Shoes"
                      ? shoe_size()
                      : SizedBox(
                          height: 0,
                        ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () async {
                                if (user.is_login == true) {
                                  if(stock == "In Stock"){
                                    if(open == true){
                                      EasyLoading.showProgress(0.30,
                                          status: 'Loading...');
                                      if (user.is_login == true) {
                                        checkout_controller.name.text =
                                            user.username;
                                      }
                                      EasyLoading.showProgress(0.40,
                                          status: 'Loading...');
                                      checkout_controller.locality.text =
                                          user.locality;
                                      checkout_controller.pincode.text =
                                          user.postal_code;
                                      checkout_controller.city.text = user.locality;
                                      checkout_controller.state.text = user.state;
                                      checkout_controller.state.text =
                                          user.locality;
                                      EasyLoading.showProgress(0.60,
                                          status: 'Loading...');
                                      var pricE = price.split(" ")[1];
                                      EasyLoading.showProgress(0.70,
                                          status: 'Loading...');
                                      var otp = engine_controller.getInteger(6);
                                      print("Otp - ${otp}");
                                      EasyLoading.showProgress(0.90,
                                          status: 'Loading...');
                                      // var todo = ParseObject('otp')
                                      //   ..set('otp', otp)
                                      //   ..set('product', {"title" : title , "des" : des , "price" : pricE , "image" : image , "stock" : stock , "lat" : lat , "long" : long , "cat":cat , "size" : cat=="Shoes" ?user.selected_size :user.selected_shirt_size , });
                                      // await todo.save();
                                      EasyLoading.showProgress(0.100,
                                          status: 'Loading...');
                                      EasyLoading.dismiss();
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) =>
                                              order_confirmation(products: [
                                                {
                                                  "title": title,
                                                  "des": des,
                                                  "price": pricE,
                                                  "image": image,
                                                  "stock": stock,
                                                  "lat": lat,
                                                  "long": long,
                                                  "cat": cat,
                                                  "quantity" : 1,
                                                  "size": cat == "Shoes"
                                                      ? user.selected_size
                                                      : user.selected_shirt_size,
                                                  "otp": otp,
                                                  'token': token,
                                                  'drop_location_lat':
                                                  "${user.lat}",
                                                  'drop_location_long':
                                                  "${user.long}"
                                                }
                                              ])));
                                    }else{
                                      Get.snackbar("Shop is Closed", "Can't buy the product");
                                    }
                                  }else{
                                    Get.snackbar("Out of Stock", "Can't buy the product");
                                  }
                                } else {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => sign_up()));
                                }
                              },
                              child: Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: stock == "In Stock"
                                        ? open == true
                                            ? ColorHelper.color[3]
                                            : ColorHelper.color[1]
                                        : ColorHelper.color[1],
                                    boxShadow: [
                                      BoxShadow(
                                          color: stock == "In Stock"
                                              ? open == true
                                              ?ColorHelper.color[3]
                                              : ColorHelper.color[1]
                                              : ColorHelper.color[1],
                                          blurRadius: 20.0)
                                    ]),
                                child: Center(
                                  child: Text("Buy Now",
                                      style: TextStyle(
                                          color: stock == "In Stock"
                                              ? open == true
                                                  ? ColorHelper.color[0]
                                                  : ColorHelper.color[0]
                                              : ColorHelper.color[0])),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          cart_button(
                            title: title,
                            des: des,
                            price: price,
                            image: image,
                            stock: stock,
                            quantity: 1,
                            lat: lat,
                            long: long,
                            cat: cat,
                            size: cat == "Shoes"
                                ? user.selected_size
                                : user.selected_shirt_size,
                            token: token,
                            open: open,
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
