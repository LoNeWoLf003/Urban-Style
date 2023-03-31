import 'package:flutter/material.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';

class my_order_info extends StatelessWidget {
  my_order_info({Key? key, required this.image, required this.name, required this.price, required this.description, required this.lat, required this.stock, required this.location , required this.long}) : super(key: key);
  final image ;
  final name ;
  final price ;
  final description ;
  final lat ;
  final long ;
  final location ;
  final stock ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SafeArea(child: Row(
              children: [
                SizedBox(width: 8,),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(IconHelper.icons[7],size: 30,)),
                SizedBox(width: 5,),
                Text("Product Info",style: TextStyle(fontSize: 18),)
              ],
            )),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SingleChildScrollView(
                    child: Container(
                        width: 300,
                        child: Text(name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                  ),
                  Expanded(child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("₹ ${price}",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),),
                  ))
                ],
              ),
            ),
            Divider(color: ColorHelper.color[1],),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(IconHelper.icons[14],color: ColorHelper.color[1],size: 24,),
                  SizedBox(width: 5,),
                  Text("Descrption",style: TextStyle(color: ColorHelper.color[1]),),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: ColorHelper.color[1],))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(description,style: TextStyle(fontSize: 18))),
            ),
            Divider(color: ColorHelper.color[1],),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(IconHelper.icons[12],color: ColorHelper.color[1],size: 24,),
                  SizedBox(width: 5,),
                  Text("Location",style: TextStyle(color: ColorHelper.color[1]),),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: ColorHelper.color[1],))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(location,style: TextStyle(fontSize: 18))),
            ),
            Divider(color: ColorHelper.color[1],),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(IconHelper.icons[15],color: ColorHelper.color[1],size: 24,),
                  SizedBox(width: 5,),
                  Text("Image",style: TextStyle(color: ColorHelper.color[1]),),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: ColorHelper.color[1],))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.memory(image,fit: BoxFit.fitHeight,height: 500,width: 500,),
              ),
            ),

            Divider(color: ColorHelper.color[1],),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(IconHelper.icons[12],color: ColorHelper.color[1],size: 24,),
                  SizedBox(width: 5,),
                  Text("Track Delivery Boy",style: TextStyle(color: ColorHelper.color[1]),),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: ColorHelper.color[1],))

                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: const EdgeInsets.all(18.0),
            //     child: InkWell(
            //       onTap: (){
            //         // Product_Controller.discoutinue(index, name , con);
            //       },
            //       child: Container(
            //         height: 80,
            //         width: double.infinity,
            //         decoration: BoxDecoration(
            //             color: ColorHelper.color[4],
            //             borderRadius: BorderRadius.all(Radius.circular(20)),
            //             boxShadow: [
            //               BoxShadow(
            //                   color: ColorHelper.color[1],
            //                   blurRadius: 30.0,
            //                   offset: Offset(0,20)
            //               )
            //             ]
            //         ),
            //         child: Center(
            //           child: Text("Discontinue",style: TextStyle(color: ColorHelper.color[0]),),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(18.0),
            //   child: out_of_stock(index: index, title: name, context: con,stock: stock,),
            // )
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
