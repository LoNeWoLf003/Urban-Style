import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/pages/account/account.dart';
import 'package:urban_style/widgets/all.dart';
import 'package:urban_style/widgets/electronics.dart';
import 'package:urban_style/widgets/glasses.dart';
import 'package:urban_style/widgets/pants.dart';
import 'package:urban_style/widgets/shoes.dart';
import 'package:urban_style/widgets/sleepers.dart';
import 'package:urban_style/widgets/t-shirt.dart';
import '../../controllers/assets/assets.dart';
import '../../widgets/category card.dart';
import '../navigation_drawer.dart/navbar.dart';
import '../../staful widgets/search.dart';
import '../../widgets/caps.dart';
import '../../widgets/chains.dart';
import '../../widgets/daily_use.dart';
import '../../widgets/kids.dart';
import '../../widgets/makeup.dart';
import '../../widgets/mens.dart';
import '../../widgets/rings.dart';
import '../../widgets/womens.dart';

late _homeState home_page_state;

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() {
    home_page_state = _homeState();
    return home_page_state;
  }
}

class _homeState extends State<home> {
  @override
  int index_ = 0;
  var categories = [
    const daily_use(),
    const mens(),
    const womens(),
    const kids(),
    const caps(),
    const glasses(),
    const rings(),
    const chains(),
    const t_shirts(),
    const makeup(),
    const pants(),
    const shoes(),
    const sleepers(),
    const electronics(),
    const all()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navigation(),
      appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Color.fromARGB(255, 10, 99, 25)),
          ),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          centerTitle: true,
          // backgroundColor: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const account()),
                        (route) => false);
                  },
                  child: SafeArea(
                      child: Icon(
                    IconHelper.icons[28],
                    size: 44,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ))),
            ),
          ]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorHelper.r_g_b[2],
        child: Column(
          children: [
            // const SizedBox(
            //   height: 5,
            // ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: InkWell(
            //         onTap: () {
            //           Navigator.of(context).pushAndRemoveUntil(
            //               MaterialPageRoute(builder: (context) => account()),
            //               (route) => false);
            //         },
            //         child: SafeArea(
            //             child: Icon(
            //           IconHelper.icons[28],
            //           size: 44,
            //         ))),
            //   ),
            // ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "DELIVERY IN",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "19 minutes",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const search()));
                },
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
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 14,left: 12),
                child: Text("Shop by categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.mens,title: "Mens",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.womens,title: "Womens",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.kids,title: "Kids",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.daily_use,title: "Daily Use",),
                )),

              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.shoes,title: "Shoes",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.electronics,title: "Electronics",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.makeup,title: "Makeup",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.frozen_food,title: "Frozen & Packed Food",),
                )),

              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.fruits_veges,title: "Fruits & Vegetables",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.dairy_breakfast,title: "Dairy & Breakfast",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.munchies,title: "Munchies",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: category_card(image: assets.coldDrinks,title: "Cold Drinks & Juices",),
                )),

              ],
            )
          ],
        ),
      ),
    );
  } // Widget build(BuildContext context) {
  //   return Scaffold(
  // body: AnimatedDrawer(
  // shadowColor: Color(0xFF4c41a3),
  // backgroundGradient: LinearGradient(
  //   colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],),
  // menuPageContent: Padding(
  //   padding: const EdgeInsets.only(top: 100.0, left: 15),
  //   child: Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         ClipRRect(
  //           borderRadius: BorderRadius.all(Radius.circular(80)),
  //           child: Image.asset(
  //             assets.logo, fit: BoxFit.fill, height: 60, width: 60,),
  //         ),
  //         SizedBox(height: 10,),
  //         Row(
  //           children: [
  //             Text(
  //               "Hey ",
  //               style: TextStyle(
  //                   fontSize: 17,
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //             Text(
  //               "There !",
  //               style: TextStyle(
  //                   fontSize: 17,
  //                   color: Colors.blue[200],
  //                   fontWeight: FontWeight.bold),
  //             )
  //           ],
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 25),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             Navigator.of(context).pushReplacement(
  //                 MaterialPageRoute(builder: (context) => home()));
  //           },
  //           child: Row(
  //             children: [
  //               Container(
  //                 child: Text(
  //                   "Home",
  //                   style: TextStyle(
  //                     color: ColorHelper.color[0],),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 20),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             if (user.is_login == true) {
  //               Navigator.of(context).pushReplacement(
  //                   MaterialPageRoute(builder: (context) => account()));
  //             } else {
  //               Navigator.of(context).pushReplacement(
  //                   MaterialPageRoute(builder: (context) => sign_up()));
  //             }
  //           },
  //           child: Row(
  //               children: [
  //                 Container(
  //                   child: Text(
  //                     "Account",
  //                     style: TextStyle(
  //                       color: ColorHelper.color[0],),
  //                   ),
  //                 ),
  //               ]
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 20),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             Navigator.of(context).pushReplacement(
  //                 MaterialPageRoute(builder: (context) => my_order()));
  //           },
  //     home      child: Row(
  //               children: [
  //                 Container(
  //                   child: Text(
  //                     "My Orders",
  //                     style: TextStyle(
  //                       color: ColorHelper.color[0],),
  //                   ),
  //                 ),
  //               ]
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 20),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             Navigator.of(context).pushReplacement(
  //                 MaterialPageRoute(builder: (context) => cart()));
  //           },
  //           child: Row(
  //               children: [
  //                 Container(
  //                   child: Text(
  //                     "Cart",
  //                     style: TextStyle(
  //                       color: ColorHelper.color[0],),
  //                   ),
  //                 ),
  //               ]
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 20),
  //         ),
  //         Divider(
  //           color: ColorHelper.r_g_b[3],
  //           thickness: 2,
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(bottom: 20),
  //         ),
  //         InkWell(
  //           onTap: () {
  //             Navigator.of(context).pushReplacement(MaterialPageRoute(
  //                 builder: (context) => help_support()));
  //           },
  //           child: Row(
  //               children: [
  //                 Container(
  //                   child: Text(
  //                     "Help & Support",
  //                     style: TextStyle(
  //                       color: ColorHelper.color[0],),
  //                   ),
  //                 ),
  //               ]
  //           ),
  //         ),
  //       ],),
  //   ),
  // ),

  // ekhan theke continue hobe
  //   homePageContent: Container(
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,
  //     height: MediaQuery
  //         .of(context)
  //         .size
  //         .height,
  //     color: ColorHelper.r_g_b[2],
  //     child: Column(
  //       children: [
  //         Align(
  //           alignment: Alignment.centerRight,
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: InkWell(
  //                 onTap: (){
  //                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => account()), (route) => false);
  //                 },
  //                 child: SafeArea(child: Icon(IconHelper.icons[28],size: 44,))),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.centerLeft,
  //           child: Padding(
  //             padding: const EdgeInsets.only(left: 12),
  //             child: Text("DELIVERY IN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.centerLeft,
  //           child: Padding(
  //             padding: const EdgeInsets.only(left: 12),
  //             child: Text("19 minutes",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 12,right: 12),
  //           child: InkWell(
  //             onTap: (){
  //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => search()));
  //             },
  //             child: Container(
  //               height: 50,
  //               width: double.infinity,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.circular(10)),
  //                 color: ColorHelper.color[1].withOpacity(0.50),

  //               ),
  //               child: Center(
  //                 child: Row(
  //                   children: [
  //                     SizedBox(width: 8,),
  //                     Icon(IconHelper.icons[10],),
  //                     SizedBox(width: 5,),
  //                     AnimatedTextKit(
  //                       animatedTexts: [
  //                         FadeAnimatedText('Search "sugar"'),
  //                         FadeAnimatedText('Search "wheat"'),
  //                         FadeAnimatedText('Search "onions"'),
  //                         FadeAnimatedText('Search "eggs"'),
  //                         FadeAnimatedText('Search "everything"'),
  //                       ],
  //                       onTap: () {
  //                         print("Tap Event");
  //                       },
  //                       repeatForever: true,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   ),
  // )
//         );
//   }
// }
//
// Widget previous_ui(){
//   Padding(
//     padding: const EdgeInsets.only(left: 18, top: 50),
//     child: SafeArea(
//       child: Row(
//         children: [
//           Text("Our Products !", style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 24),),
//           Expanded(child: Align(
//             alignment: Alignment.topRight,
//             child: Padding(
//               padding: const EdgeInsets.only(right: 10, top: 5),
//               child: SafeArea(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => search()));
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(60)),
//                     ),
//                     child: Center(
//                       child: Icon(IconHelper.icons[10],
//                         color: ColorHelper.color[2],),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),)
//         ],
//       ),
//     ),
//   ),
//   SizedBox(height: 10,),
//   category(),
//   Expanded(child: Container(
//   height: double.infinity,
//   width: double.infinity,
//   child: categories[index_],
//   ))
//
}
