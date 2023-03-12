import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/user/user.dart';

class cart_button extends StatefulWidget {
  const cart_button({Key? key, required this.title, required this.des, required this.price, required this.image, required this.stock, required this.lat, required this.long, this.cat}) : super(key: key);
  final title;

  final des;

  final price;

  final image;

  final stock;

  final lat;

  final long;

  final cat;
  @override
  State<cart_button> createState() => _cart_buttonState();
}

class _cart_buttonState extends State<cart_button> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(user.cart.any((element) => element['title'] == widget.title));
    if(user.cart.any((element) => element['title'] == widget.title) == true){
      is_added = true;
    }else{
      is_added = false;
    }
  }
  bool is_added = false;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          is_added = !is_added;
          if(is_added == true){
            var price = widget.price.split(" ")[1];
            print(price);
            var product = {"title" : widget.title , "des" : widget.des , "price" : price , "image" : widget.image , "stock" : widget.stock , "lat" : widget.lat , "long" : widget.long , "cat":widget.cat};
            user.cart.add(product);
            var prev_price = user.cart_price;
            user.cart_price = prev_price + int.parse(price);
          }else{
            var product = {"title" : widget.title , "des" : widget.des , "price" : widget.price , "image" : widget.image , "stock" : widget.stock , "lat" : widget.lat , "long" : widget.long , "cat":widget.cat};
            user.cart.remove(product);
          }

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
