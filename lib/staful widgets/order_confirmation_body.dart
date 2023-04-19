import 'package:flutter/cupertino.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';

import '../widgets/checkout/location.dart';
import '../widgets/checkout/packging.dart';
import '../widgets/checkout/payment.dart';


late _order_confirmation_bodyState checkout_bodY ;
class order_confirmation_body extends StatefulWidget {
  order_confirmation_body({Key? key, required this.products, }) : super(key: key);
  var price = 0;
  List products ;
  @override
  State<order_confirmation_body> createState() {
    checkout_bodY = _order_confirmation_bodyState();
    return checkout_bodY;
  }
}

class _order_confirmation_bodyState extends State<order_confirmation_body> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkout_controller.country_code.text = "+91";
    widget.products.forEach((element) {
      var prevPrice = widget.price;
      widget.price = int.parse(element["price"]) + prevPrice;
    });

  }
  var index = 0;
  final pages = [
    location(),
    packging(),
    payment()
  ];
  Widget build(BuildContext context) {
    return pages[index];
  }
}
