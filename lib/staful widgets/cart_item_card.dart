
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/cart/cart%20controller.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/staful%20widgets/cart_bottom.dart';
import 'package:urban_style/staful%20widgets/cart_delete_btn.dart';
import 'package:urban_style/widgets/product_info.dart';

import '../user/user.dart';

class cart_item_card extends StatefulWidget {
  cart_item_card({Key? key, required this.title, required this.des, required this.price, required this.image, required this.stock, required this.lat, required this.long, this.cat, this.selected_size, required this.index, }) : super(key: key);
  final title;

  final des;

  int price;

  final image;

  final stock;

  final lat;

  final long;

  final cat;

  final selected_size ;

  final index ;

  @override
  State<cart_item_card> createState() => _cart_item_cardState();
}

class _cart_item_cardState extends State<cart_item_card> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    price = widget.price;
  }
  bool delete = false;
  late int price ;
  var no = 1;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(delete == false){
          print(widget.cat);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => product_info(title: widget.title, price: "₹ ${widget.price}", image: widget.image, stock: widget.stock, des: widget.des, lat: widget.lat, long: widget.long , cat: widget.cat, selected_size: widget.selected_size,)));
        }else{
          setState(() {
            delete = false;

          });
        }
      },
      onDoubleTap: (){
        setState(() {
          delete = true;
        });
      },
      onLongPress: (){
        setState(() {

          delete = true;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: delete ? ColorHelper.color[8] : ColorHelper.color[0],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      color: widget.stock == "In Stock"
                          ? ColorHelper.color[3].withOpacity(0.40)
                          : ColorHelper.color[4].withOpacity(0.40)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          color: widget.stock == "In Stock"
                              ? ColorHelper.color[3].withOpacity(0.85)
                              : ColorHelper.color[4].withOpacity(0.85)
                      ),
                      child: Center(
                        child: Image.memory(widget.image,fit: BoxFit.fill,),
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                      width: double.infinity,
                      child: Text("${widget.title}",style: TextStyle(fontSize: 15,color: delete ? ColorHelper.color[0] : ColorHelper.color[2]),overflow: TextOverflow.ellipsis,)),
                  SizedBox(height: 10,),
                  Container(
                      width: double.infinity,
                      child: Text("₹${widget.price}",style: TextStyle(fontSize: 15,color: delete ? ColorHelper.color[0] : ColorHelper.color[1]),overflow: TextOverflow.ellipsis,)),

                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: 40,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  InkWell(
                      onTap: (){
                       if(no > 1){
                         var prev_price = user.cart_price;
                         setState(() {
                           no = no-1;
                           widget.price = widget.price - price;
                           print(price);
                           user.cart_price = prev_price - price;
                           print(user.cart_price);
                         });
                         cart_bottom_state.update();
                       }
                      },
                      child: Container(
                          height: 30,
                          width: 30,

                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Center(child: Icon(IconHelper.icons[19],color: delete ? ColorHelper.color[0] : ColorHelper.color[1],)),
                          ))),
                  SizedBox(height: 10,),
                  Text("$no",style: TextStyle(color: delete ? ColorHelper.color[0] : ColorHelper.color[1]),),
                  SizedBox(height: 5,),
                  InkWell(
                      onTap: (){
                        var prev_price = user.cart_price;
                        setState(() {
                          no = no+1;
                          widget.price = price + widget.price;
                          print(price);
                          user.cart_price = prev_price + price;
                          print(user.cart_price);
                        });
                        cart_bottom_state.update();
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          child: Center(child: Icon(IconHelper.icons[21],color: delete ? ColorHelper.color[0] : ColorHelper.color[3],))))
                ],
              ),
            ),
            SizedBox(width: 8,),
            delete ? InkWell(
                onTap: (){
                  user.cart.removeAt(widget.index);
                  var prev_price = user.cart_price;
                  user.cart_price = prev_price - price;
                  // cart_controller.cart_update();
                  Get.snackbar("Cart Updated" , "Cart Updated .. ");
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => cart()));
                },
                child: Icon(IconHelper.icons[19],size: 44,color: ColorHelper.color[10],)) : SizedBox()
          ]
        ),
      ),
    );
  }
}
