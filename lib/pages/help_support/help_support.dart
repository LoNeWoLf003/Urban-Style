import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';

import '../../constrants/color.dart';
import '../../controllers/assets/assets.dart';
import '../../staful widgets/message_body.dart';
import '../../staful widgets/text_feild_help_support.dart';
import '../../user/user.dart';
import '../account/account.dart';
import '../accounts/sign up/sign up.dart';
import '../cart/cart.dart';
import '../home/home.dart';
import '../my_orders/my order.dart';

class help_support extends StatelessWidget {
  const help_support({Key? key}) : super(key: key);

  @override
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
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Image.asset(assets.logo,fit: BoxFit.fill,height: 60,width: 60,),
                  ),
                  SizedBox(height: 10,),
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
                    padding: EdgeInsets.only(bottom: 25),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: ColorHelper.color[0],),
                          ),
                        ),
                      ],
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
                    child: Row(
                        children:[
                          Container(
                            child: Text(
                              "Account",
                              style: TextStyle(
                                color: ColorHelper.color[0],),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => help_support()));
                    },
                    child: Row(
                        children:[
                          Container(
                            child: Text(
                              "Help & Support",
                              style: TextStyle(
                                color: ColorHelper.color[0],),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => cart()));
                    },
                    child: Row(
                        children:[
                          Container(
                            child: Text(
                              "Cart",
                              style: TextStyle(
                                color: ColorHelper.color[0],),
                            ),
                          ),
                        ]
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
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => my_order()));
                    },
                    child: Row(
                        children:[
                          Container(
                            child: Text(
                              "My Orders",
                              style: TextStyle(
                                color: ColorHelper.color[0],),
                            ),
                          ),
                        ]
                    ),
                  ),
                ],),
            ),
          ),
          homePageContent: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: ColorHelper.r_g_b[2],
            child: Column(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, top: 50),
                        child: SafeArea(
                            child: Text(
                              "Help & Support",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            )),
                      ),
                    ),
              ],
                ),
                Expanded(child: message_body()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: text_feild_help_support(),
                  ),
                )
            ]
            ),
          ),
        ));
  }
}
