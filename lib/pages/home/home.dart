import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/pages/account/account.dart';
import 'package:urban_style/pages/accounts/login/login.dart';
import 'package:urban_style/widgets/all.dart';
import 'package:urban_style/widgets/atta%20rice.dart';
import 'package:urban_style/widgets/bakery.dart';
import 'package:urban_style/widgets/cleaning%20essentials.dart';
import 'package:urban_style/widgets/cold%20drinks%20juices.dart';
import 'package:urban_style/widgets/dairy%20breakfast.dart';
import 'package:urban_style/widgets/electronics.dart';
import 'package:urban_style/widgets/glasses.dart';
import 'package:urban_style/widgets/masala%20dry%20fruits.dart';
import 'package:urban_style/widgets/munchies.dart';
import 'package:urban_style/widgets/pants.dart';
import 'package:urban_style/widgets/personal%20care.dart';
import 'package:urban_style/widgets/shoes.dart';
import 'package:urban_style/widgets/sleepers.dart';
import 'package:urban_style/widgets/sweet%20tooth.dart';
import 'package:urban_style/widgets/t-shirt.dart';
import '../../controllers/assets/assets.dart';
import '../../controllers/home/home_controller.dart';
import '../../staful widgets/add_btn.dart';
import '../../staful widgets/cart icon.dart';
import '../../user/user.dart';
import '../../widgets/category card.dart';
import '../../widgets/frozen food.dart';
import '../../widgets/fruits vegetables.dart';
import '../../widgets/home page loader.dart';
import '../../widgets/pet care.dart';
import '../../widgets/product_info.dart';
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

          // title: const Text(
          //   '',
          //   style: TextStyle(color: Color.fromARGB(255, 10, 99, 25)),
          // ),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          centerTitle: true,
          // backgroundColor: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            SizedBox(width: 50,),
            Expanded(
              child: Center(
                child : Image.asset(assets.appbar_anim_2,height: double.infinity,width: 170,fit: BoxFit.fitWidth,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: SafeArea(
                  child: CartIcon()),
            ),
          ]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorHelper.r_g_b[2],
        child: SingleChildScrollView(
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
                    "39 minutes",
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const search()));
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const search()));
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
                  padding: const EdgeInsets.only(top: 14, left: 12),
                  child: Text(
                    "Shop by categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => pet_care()));
                        },
                        child: category_card(
                          image: assets.pet_care,
                          title: "Pet Care",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => personal_care()));
                        },
                        child: category_card(
                          image: assets.personal_care,
                          title: "Personal Care",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => cleaning_essentials()));
                        },
                        child: category_card(
                          image: assets.cleaning_essentials,
                          title: "Cleaning Essentials",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => frozen_food()));
                        },
                        child: category_card(
                          image: assets.frozen_food,
                          title: "Frozen & Packed Food",
                        )),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => fruits_vegetables()));
                        },
                        child: category_card(
                          image: assets.fruits_veges,
                          title: "Fruits & Vegetables",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => dairy_breakfast()));
                        },
                        child: category_card(
                          image: assets.dairy_breakfast,
                          title: "Dairy & Breakfast",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => munchies()));
                        },
                        child: category_card(
                          image: assets.munchies,
                          title: "Munchies",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => cold_drinks_juices()));
                        },
                        child: category_card(
                          image: assets.coldDrinks,
                          title: "Cold Drinks & Juices",
                        )),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => bakery()));
                        },
                        child: category_card(
                          image: assets.bakery,
                          title: "Bakery",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => masala_dry_fruits()));
                        },
                        child: category_card(
                          image: assets.masala_dry_fruits,
                          title: "Masala & Dry Fruits",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sweet_tooth()));
                        },
                        child: category_card(
                          image: assets.sweetooth,
                          title: "Sweet Tooth",
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => atta_rice()));
                        },
                        child: category_card(
                          image: assets.atta,
                          title: "Atta, Rice & Dal",
                        )),
                  )),
                ],
              ),
              Divider(color: ColorHelper.color[1],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Summer Special",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ),

              FutureBuilder(
                  future: home_controller.load_summer(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: home_page_loader());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    } else {
                      return snapshot.data == null
                          ? Container(
                        height: 300,
                        width: 500,
                        child: Center(
                          child: Text("Nothing to show. Come back later !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorHelper.color[1]),),
                        ),
                      )
                        :  Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
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
                                        height: 300,
                                        width: 160,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                  border: Border.all(
                                                      color: ColorHelper.color[1]
                                                          .withOpacity(0.40))),
                                              child: Center(
                                                  child : Image.memory(snapshot.data[index]["image"])
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8,top: 8),
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
                                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
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
                              }));
                    }
                  }),
              Divider(color: ColorHelper.color[1],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fruits & Veggies for you",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ),

              FutureBuilder(
                  future: home_controller.load_fruits_veges(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: home_page_loader());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    } else {
                      return snapshot.data == null
                          ? Container(
                        height: 300,
                        width: 500,
                        child: Center(
                          child: Text("Nothing to show. Come back later !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorHelper.color[1]),),
                        ),
                      )
                          :  Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
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
                                        height: 300,
                                        width: 160,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                  border: Border.all(
                                                      color: ColorHelper.color[1]
                                                          .withOpacity(0.40))),
                                              child: Center(
                                                  child : Image.memory(snapshot.data[index]["image"])
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8,top: 8),
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
                                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
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
                              }));
                    }
                  }),
              Divider(color: ColorHelper.color[1],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Party Special",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ),

              FutureBuilder(
                  future: home_controller.load_frozen(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: home_page_loader());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    } else {
                      return snapshot.data == null
                          ? Container(
                        height: 300,
                        width: 500,
                        child: Center(
                          child: Text("Nothing to show. Come back later !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorHelper.color[1]),),
                        ),
                      )
                          :  Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
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
                                        height: 300,
                                        width: 160,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                  border: Border.all(
                                                      color: ColorHelper.color[1]
                                                          .withOpacity(0.40))),
                                              child: Center(
                                                  child : Image.memory(snapshot.data[index]["image"])
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8,top: 8),
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
                                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
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
                              }));
                    }
                  }),
              Divider(color: ColorHelper.color[1],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Morning Freshness",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ),

              FutureBuilder(
                  future: home_controller.load_breakfast(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: home_page_loader());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    } else {
                      return snapshot.data == null
                          ? Container(
                        height: 300,
                        width: 500,
                        child: Center(
                          child: Text("Nothing to show. Come back later !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorHelper.color[1]),),
                        ),
                      )
                          :  Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
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
                                        height: 300,
                                        width: 160,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                  border: Border.all(
                                                      color: ColorHelper.color[1]
                                                          .withOpacity(0.40))),
                                              child: Center(
                                                  child : Image.memory(snapshot.data[index]["image"])
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8,top: 8),
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
                                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
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
                              }));
                    }
                  }),
              Divider(color: ColorHelper.color[1],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Daily Use",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ),

              FutureBuilder(
                  future: home_controller.load_daily(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: home_page_loader());
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    } else {
                      return snapshot.data == null
                          ? Container(
                        height: 300,
                        width: 500,
                        child: Center(
                          child: Text("Nothing to show. Come back later !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorHelper.color[1]),),
                        ),
                      )
                          :  Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: (){
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
                                        height: 300,
                                        width: 160,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 140,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                  border: Border.all(
                                                      color: ColorHelper.color[1]
                                                          .withOpacity(0.40))),
                                              child: Center(
                                                  child : Image.memory(snapshot.data[index]["image"])
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8,top: 8),
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
                                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
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
                              }));
                    }
                  }),
              SizedBox(
                height: 20,
              )

            ],
          ),
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
