import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';

class cart_button extends StatefulWidget {
  const cart_button({Key? key}) : super(key: key);

  @override
  State<cart_button> createState() => _cart_buttonState();
}

class _cart_buttonState extends State<cart_button> {
  @override
  bool is_added = false;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          is_added = !is_added;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 60,
        width : 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: is_added
          ? ColorHelper.color[8]
          :ColorHelper.color[0],
          boxShadow: [
            BoxShadow(
              color: ColorHelper.color[1],
              blurRadius: 20.0
            ),
          ]
        ),
        child: Center(
          child: is_added
          ?Icon(IconHelper.icons[11],color: ColorHelper.color[0],)
          :Icon(IconHelper.icons[6],color: ColorHelper.color[1],),
        ),

      ),
    );
  }
}
