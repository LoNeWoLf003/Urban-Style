import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';
import '../user/user.dart';

class like_btn extends StatefulWidget {
  const like_btn({Key? key, required this.title, required this.des, required this.price, required this.image, required this.stock, required this.lat, required this.long, this.cat}) : super(key: key);
  final title;

  final des;

  final price;

  final image;

  final stock;

  final lat;

  final long;

  final cat;
  @override
  State<like_btn> createState() => _like_btnState();
}

class _like_btnState extends State<like_btn> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    print(user.cart.any((element) => element['title'] == widget.title));
    if(user.cart.any((element) => element['title'] == widget.title) == true){
      like = true;
    }else{
      like = false;
    }
  }
  bool like = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,right: 8),
      child: Align(
          alignment: Alignment.centerRight,
          child: like == true
              ? InkWell(
            onTap: (){
              print("Changed");
              setState(() {
                like = false;
                var product = {"title" : widget.title , "des" : widget.des , "price" : widget.price , "image" : widget.image , "stock" : widget.stock , "lat" : widget.lat , "long" : widget.long , "cat":widget.cat};
                user.cart.remove(product);
              });
            },
            child: Container(
                height: 40,
                width: 40,
                child: Icon(IconHelper.icons[16],color: ColorHelper.color[4],)),
          )
              : InkWell(
            onTap: (){
              print("Changed");
              setState(() {
                like = true;
                var product = {"title" : widget.title , "des" : widget.des , "price" : widget.price , "image" : widget.image , "stock" : widget.stock , "lat" : widget.lat , "long" : widget.long , "cat":widget.cat};
                user.cart.add(product);
                var prev_price = user.cart_price;
                user.cart_price = prev_price + int.parse(widget.price);
              });
            },
            child: Container(
                height: 40,
                width: 40,
                child: Icon(IconHelper.icons[15],color: ColorHelper.color[1],)),
          )
      ),
    );
  }
}
