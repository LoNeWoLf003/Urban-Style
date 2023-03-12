import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/pages/account/account.dart';
import 'package:urban_style/pages/accounts/sign%20up/sign%20up.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/pages/help_support/help_support.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/all.dart';
import 'package:urban_style/widgets/electronics.dart';
import 'package:urban_style/widgets/glasses.dart';
import 'package:urban_style/widgets/pants.dart';
import 'package:urban_style/widgets/shoes.dart';
import 'package:urban_style/widgets/sleepers.dart';
import 'package:urban_style/widgets/t-shirt.dart';

import '../../controllers/cart/cart controller.dart';
import '../../staful widgets/category.dart';
import '../../staful widgets/search.dart';
import '../../widgets/caps.dart';
import '../../widgets/chains.dart';
import '../../widgets/makeup.dart';
import '../../widgets/rings.dart';

late _homeState home_page_state ;
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
    caps(),
    glasses(),
    rings(),
    chains(),
    t_shirts(),
    makeup(),
    pants(),
    shoes(),
    sleepers(),
    electronics(),
    all()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedDrawer(
        shadowColor: Color(0xFF4c41a3),
        backgroundGradient: LinearGradient(
          colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],),
        menuPageContent: Padding(
          padding: const  EdgeInsets.only(top: 100.0, left: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///// APNA LOGO /////////////////////////////
                Row(
                  children: [
                    Text(
                      "Hey ",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "There !",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue[200],
                          fontWeight: FontWeight.bold),
                    )],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Container(
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: ColorHelper.color[0],),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                InkWell(
                  onTap: (){
                    if(user.is_login == true){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => account()));

                    }else{
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => sign_up()));

                    }
                  },
                  child: Container(
                    child: Text(
                      "Account",
                      style: TextStyle(
                        color: ColorHelper.color[0],),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => help_support()));
                  },
                  child: Container(
                    child: Text(
                      "Help & Support",
                      style: TextStyle(
                        color: ColorHelper.color[0],),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                InkWell(
                  onTap: (){

                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => cart()));
                  },
                  child: Container(
                    child: Text(
                      "Cart",
                      style: TextStyle(
                        color: ColorHelper.color[0],),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Divider(
                  color: ColorHelper.r_g_b[3],
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Text(
                  "Logout ",
                  style: TextStyle(
                    color: ColorHelper.color[0],),),
              ],),
          ),
        ),
        homePageContent: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ColorHelper.r_g_b[2],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,top: 50),
                  child: SafeArea(child: Text("Our Products !",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24),)),
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200,left: 8,right: 8),
                    child: categories[index_],
                  )
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: context.isPhone ?150 : 100),
                  child: category(),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,top: 5),
                  child: SafeArea(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => search()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        ),
                        child: Center(
                          child: Icon(IconHelper.icons[10],color: ColorHelper.color[2],),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
