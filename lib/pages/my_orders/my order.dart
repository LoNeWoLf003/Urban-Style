import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/widgets/my_order_cart.dart';

import '../../constrants/color.dart';
import '../../staful widgets/order_confirmation_body.dart';
import '../../user/user.dart';
import '../account/account.dart';
import '../accounts/sign up/sign up.dart';
import '../cart/cart.dart';
import '../help_support/help_support.dart';
import '../home/home.dart';

class my_order extends StatelessWidget {
  const my_order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedDrawer(
          shadowColor: Color(0xFF4c41a3),
          backgroundGradient: LinearGradient(
            colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
          ),
          menuPageContent: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 15),
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
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Container(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: ColorHelper.color[0],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: () {
                      if (user.is_login == true) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => account()));
                      } else {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => sign_up()));
                      }
                    },
                    child: Container(
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: ColorHelper.color[0],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => help_support()));
                    },
                    child: Container(
                      child: Text(
                        "Help & Support",
                        style: TextStyle(
                          color: ColorHelper.color[0],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => cart()));
                    },
                    child: Container(
                      child: Text(
                        "Cart",
                        style: TextStyle(
                          color: ColorHelper.color[0],
                        ),
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
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => my_order()));
                    },
                    child: Text(
                      "My Orders",
                      style: TextStyle(
                        color: ColorHelper.color[0],
                      ),
                    ),
                  ),
                ],
              ),
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
                              "My Orders",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            )),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 0,),
                Expanded(
                  child: ListView.builder(
                      itemCount: user.my_orders.length,
                      itemBuilder: (context , index){
                        print(user.my_orders.length);
                        print(user.my_orders);
                    return Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18,bottom: 0,top: 10),
                      child: my_order_card(index: index),
                    );
                  }),
                ),
              ],
            ),
          ),
        ));
  }
}
