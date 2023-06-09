import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/widgets/product_info.dart';
import 'package:urban_style/widgets/shimmer%20loader.dart';

import '../constrants/color.dart';
import '../controllers/assets/assets.dart';
import '../controllers/home/home_controller.dart';
import '../staful widgets/like_btn.dart';

class sleepers extends StatelessWidget {
  const sleepers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: home_controller.load_sleepers(context),
        builder: (context , AsyncSnapshot snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
        return shimmer_loader(context.isPhone);
      }else if(snapshot.hasError){
        return Center(
          child: Text("Something went wrong"),
        );
      }else{
        return snapshot.data == null
            ? Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(assets.nothing_found),
        )
            :GridView.builder(shrinkWrap: true , itemCount: snapshot.data.length , gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isPhone ?2 : 6,mainAxisExtent: 266), itemBuilder: (context,index){
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => product_info(lat: snapshot.data[index]["lat"],long: snapshot.data[index]["long"],title: snapshot.data[index]["title"], price: "₹ ${snapshot.data[index]["price"]}", image: snapshot.data[index]["image"], stock: snapshot.data[index]["stock"],des: snapshot.data[index]["description"], token: snapshot.data[index]["token"] ,open: snapshot.data[index]["shop_status"],)));
                },
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
                          snapshot.data[index]["stock"] == "In Stock"
                              ? snapshot.data[index]["shop_status"] == true
                              ? Text("")
                              : Text("* Shop Closed",style: TextStyle(color: ColorHelper.color[4]),)
                              : Text("* out of stock",style: TextStyle(color: ColorHelper.color[4]),),
                          Expanded(child: like_btn(title: snapshot.data[index]["title"],open : snapshot.data[index]["shop_status"],  des: snapshot.data[index]["description"], price: snapshot.data[index]["price"], image: snapshot.data[index]["image"], stock: snapshot.data[index]["stock"], lat: snapshot.data[index]["lat"], long: snapshot.data[index]["long"], token: snapshot.data[index]["token"] )),
                        ],
                      ),
                      Container(
                          height: 134,
                          width: 134,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(80)),
                              color: snapshot.data[index]["stock"] == "In Stock"
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
                                  color: snapshot.data[index]["stock"] == "In Stock"
                                      ? ColorHelper.color[3].withOpacity(0.85)
                                      : ColorHelper.color[4].withOpacity(0.85)
                              ),
                              child: Center(
                                child: Image.memory(snapshot.data[index]["image"],fit: BoxFit.fill,),
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        child: Text(snapshot.data[index]["title"],overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold , color: ColorHelper.r_g_b[3]),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        child: Text("₹ ${snapshot.data[index]["price"]}",overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold , color: ColorHelper.color[2]),),
                      )
                    ],
                  ),
                ),
              )

          );
        });
      }
    });
  }
}
