import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/material.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../controllers/cart/cart controller.dart';
import '../../staful widgets/cart_bottom.dart';
import '../../staful widgets/cart_item_card.dart';
import '../../staful widgets/search.dart';
import '../../user/user.dart';
import '../account/account.dart';
import '../accounts/sign up/sign up.dart';
import '../help_support/help_support.dart';
import '../home/home.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

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
              Text(
                "Logout ",
                style: TextStyle(
                  color: ColorHelper.color[0],
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
                      "My Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 50,right: 18),
                      child: SafeArea(
                          child: Icon(IconHelper.icons[19],color: cart_controller.delete_btn_color == false ? ColorHelper.color[1] : ColorHelper.color[4],)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 0,),
            cart_bottom()
          ],
        ),
      ),
    ));
  }
}
