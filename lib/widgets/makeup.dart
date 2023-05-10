import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/widgets/product_info.dart';
import 'package:urban_style/widgets/shimmer%20loader.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';
import '../controllers/assets/assets.dart';
import '../controllers/home/home_controller.dart';
import '../staful widgets/add_btn.dart';
import '../staful widgets/like_btn.dart';
import '../staful widgets/search.dart';

class makeup extends StatelessWidget {
  const makeup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: home_controller.load_makeup(context),
        builder: (context , AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Column(
              children: [
                SizedBox(height: 400,),
                Center(child: Text("All you need is Here !",style: TextStyle(color: ColorHelper.color[1],fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 18),)),
                SizedBox(height: 10,),
                Center(child: CircularProgressIndicator(color: ColorHelper.color[1],strokeWidth: 5,)),
              ],
            );
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
                : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    color: ColorHelper.color[0],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12,top: 20,bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const search()));
                        },
                        child: SafeArea(
                          child: Row(
                            children: [
                              InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Icon(IconHelper.icons[7])),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    color: ColorHelper.color[1].withOpacity(0.50),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Icon(
                                          IconHelper.icons[10],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        AnimatedTextKit(
                                          animatedTexts: [
                                            FadeAnimatedText('Search "sugar"'),
                                            FadeAnimatedText('Search "wheat"'),
                                            FadeAnimatedText('Search "onions"'),
                                            FadeAnimatedText('Search "eggs"'),
                                            FadeAnimatedText('Search "everything"'),
                                          ],
                                          onTap: () {
                                            print("Tap Event");
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => const search()));
                                          },
                                          repeatForever: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8),
                        child: Text('Showing results for "makeup"',style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 0, right: 0, bottom: 0),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: context.isPhone ? 2 : 6,
                            mainAxisExtent: 300),
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => product_info(
                                        token: snapshot.data[index]["token"],
                                        title: snapshot.data[index]["title"],
                                        price:
                                        "₹ ${snapshot.data[index]["price"]}",
                                        image: snapshot.data[index]["image"],
                                        stock: snapshot.data[index]["stock"],
                                        des: snapshot.data[index]
                                        ["description"],
                                        lat: snapshot.data[index]["lat"],
                                        long: snapshot.data[index]["long"], open: snapshot.data[index]["shop_status"],
                                      )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorHelper.color[0],
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          snapshot.data[index]["stock"] ==
                                              "In Stock"
                                              ? Container(
                                            height: 50,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                                color: ColorHelper.color[3]
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(1.0),
                                                child: Text("15% off",style: TextStyle(color: ColorHelper.color[0]),),
                                              ),
                                            ),
                                          )
                                              : Text(
                                            "* out of stock",
                                            style: TextStyle(
                                                color:
                                                ColorHelper.color[4]),
                                          ),
                                          Expanded(child: like_btn(title: snapshot.data[index]["title"], des: snapshot.data[index]["des"], price: snapshot.data[index]["price"], image: snapshot.data[index]["image"], stock: snapshot.data[index]["stock"], lat: snapshot.data[index]["lat"], long: snapshot.data[index]["long"], token: snapshot.data[index]["token"], open: snapshot.data[index]["shop_status"],)),
                                        ],
                                      ),
                                      Container(
                                          height: 134,
                                          width: 134,
                                          // decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.all(
                                          //         Radius.circular(80)),
                                          //     color: snapshot.data[index]
                                          //                 ["stock"] ==
                                          //             "In Stock"
                                          //         ? ColorHelper.color[3]
                                          //             .withOpacity(0.40)
                                          //         : ColorHelper.color[4]
                                          //             .withOpacity(0.40)),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              // decoration: BoxDecoration(
                                              //     borderRadius:
                                              //         BorderRadius.all(
                                              //             Radius.circular(80)),
                                              //     color: snapshot.data[index]
                                              //                 ["stock"] ==
                                              //             "In Stock"
                                              //         ? ColorHelper.color[3]
                                              //             .withOpacity(0.85)
                                              //         : ColorHelper.color[4]
                                              //             .withOpacity(0.85)),
                                              child: Center(
                                                child: Image.memory(
                                                  snapshot.data[index]["image"],
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          )),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(
                                      //       left: 5, right: 5, top: 5),
                                      //   child: Text(
                                      //     snapshot.data[index]["title"],
                                      //     overflow: TextOverflow.ellipsis,
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.bold,
                                      //         color: ColorHelper.r_g_b[3]),
                                      //   ),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(
                                      //       left: 5, right: 5, top: 5),
                                      //   child: Text(
                                      //     "₹ ${snapshot.data[index]["price"]}",
                                      //     overflow: TextOverflow.ellipsis,
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.bold,
                                      //         color: ColorHelper.color[2]),
                                      //   ),
                                      // )
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 25,
                                            width: 74,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                                color: ColorHelper.color[1].withOpacity(0.10)
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 2,),
                                                Icon(IconHelper.icons[29],size: 20,),
                                                SizedBox(width: 3,),
                                                Text("20 MINS",style: TextStyle(letterSpacing : 0.50,fontSize: 10,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                                        child: Text(snapshot.data[index]["title"],style: TextStyle(fontWeight: FontWeight.bold),maxLines: 2,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8,right: 8),
                                        child: Row(
                                          children: [
                                            Text("₹${snapshot.data[index]["price"]}",style: TextStyle(color: ColorHelper.color[2]),),
                                            Expanded(
                                                child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: cart_btn(title: snapshot.data[index]["title"], des: snapshot.data[index]["des"], price: snapshot.data[index]["price"], image: snapshot.data[index]["image"], stock: snapshot.data[index]["stock"], lat: snapshot.data[index]["lat"], long: snapshot.data[index]["long"], token: snapshot.data[index]["token"], open: snapshot.data[index]["shop_status"], cat: null, size: null,),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
