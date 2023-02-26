import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';

import '../constrants/color.dart';
import '../staful widgets/cart btn.dart';

class product_info extends StatelessWidget {
  const product_info(
      {Key? key,
      required this.title,
      required this.price,
      required this.image,
      required this.stock,
      required this.des})
      : super(key: key);
  final title;

  final des;

  final price;

  final image;

  final stock;

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
                      Navigator.pop(context);
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
                ? null
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
          Container(
            height: 300,
            width: 300,
            child: Image.memory(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: double.infinity,
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
                  Expanded(child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: ColorHelper.color[3],
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorHelper.color[3],
                                    blurRadius: 20.0
                                  )
                                ]
                              ),
                              child: Center(
                                child: Text("Buy Now !",style: TextStyle(color: ColorHelper.color[0]),),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          cart_button()
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
