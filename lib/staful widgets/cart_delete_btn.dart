import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/controllers/cart/cart%20controller.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/pages/home/home.dart';
import 'package:urban_style/user/user.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';

class cart_delete_btn extends StatefulWidget {
  const cart_delete_btn({Key? key}) : super(key: key);

  @override
  State<cart_delete_btn> createState() => _cart_delete_btnState();
}

class _cart_delete_btnState extends State<cart_delete_btn> {
  @override
  bool delete = true;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 50,right: 18),
      child: SafeArea(
          child: InkWell(
              onTap: () async{
                user.cart = [];
                user.cart_price = 0;
                cart_controller.remove_cart();
                await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home()));
              },
              child: Icon(IconHelper.icons[19],color: delete == false ? ColorHelper.color[1] : ColorHelper.color[4],))),
    );
  }
}
