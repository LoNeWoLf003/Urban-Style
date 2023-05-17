import 'package:flutter/material.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/user/user.dart';

late _CartIconState cart_button_state ;
class CartIcon extends StatefulWidget {
  @override
  _CartIconState createState() {
    cart_button_state = _CartIconState();
    return cart_button_state;
  }
}

class _CartIconState extends State<CartIcon> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number = "${user.cart.length}";
  }
  var number = "0";
  update(){
    setState(() {
      number = "${user.cart.length}";
    });
  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) => const cart()),
                    (route) => false);
          },
        ),
        Positioned(
          right: 0,
          top: 5,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              '${number}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
