import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/controllers/home/home_controller.dart';
import 'package:urban_style/staful%20widgets/like_btn.dart';

class caps extends StatelessWidget {
  const caps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return home_controller.caps.isEmpty
        ? Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Image.asset(assets.nothing_found),
    )
        :GridView.builder(shrinkWrap: true , itemCount: home_controller.caps.length , gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isPhone ?2 : 6,mainAxisExtent: 266), itemBuilder: (context,index){
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: ColorHelper.color[0],
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: ColorHelper.color[1],
                      blurRadius: 5,
                      offset: Offset(3,4)
                  )
                ]
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 8,),
                    home_controller.caps[index]["stock"] == "In Stock"
                        ? Text("")
                        : Text("* out of stock",style: TextStyle(color: ColorHelper.color[4]),),
                    Expanded(child: like_btn()),
                  ],
                ),
                Container(
                    height: 134,
                    width: 134,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                        color: home_controller.caps[index]["stock"] == "In Stock"
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
                            color: home_controller.caps[index]["stock"] == "In Stock"
                                ? ColorHelper.color[3].withOpacity(0.85)
                                : ColorHelper.color[4].withOpacity(0.85)
                        ),
                        child: Center(
                          child: Image.memory(home_controller.caps[index]["image"],fit: BoxFit.fill,),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                  child: Text(home_controller.caps[index]["title"],overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold , color: ColorHelper.r_g_b[3]),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                  child: Text("₹ ${home_controller.caps[index]["price"]}",overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold , color: ColorHelper.color[2]),),
                )
              ],
            ),
          )

      );
    });
  }
}
