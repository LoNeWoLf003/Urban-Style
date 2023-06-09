import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/account/account_controller.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/pages/help_support/help_support.dart';
import 'package:urban_style/pages/my_orders/my%20order.dart';
import 'package:urban_style/pages/report%20bug/report%20bug.dart';
import 'package:urban_style/user/user.dart';
import '../account/account.dart';
import '../accounts/sign up/sign up.dart';
import '../home/home.dart';
import 'drawer_item.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Material(
        color: ColorHelper.drawer_color.withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
                height: 5,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 4),
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                name: 'My Account',
                icon: Icons.account_box_rounded,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'My Orders',
                  icon: Icons.history_outlined,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Cart',
                  icon: Icons.favorite_outline,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Help & Support',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 3)),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () {
                    account_controller.logout(context);
                  }),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Report Bug',
                  icon: Icons.bug_report_outlined,
                  onPressed: () => onItemPressed(context, index: 5)),
            ],
          ),
        ),
      ),
    ));
  }
}

void onItemPressed(BuildContext context, {required int index}) {
  Navigator.pop(context);

  switch (index) {
    case 0:
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => sample()));
      if (user.is_login == true) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const account()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const sign_up()));
      }
      break;
    case 1:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const my_order()));
      break;

    case 2:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const cart()));
      break;
    case 3:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const help_support()));
      break;
    case 4:
      Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
      break;
    case 5:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const report_bug()));
      break;
  }
}

Widget headerWidget() {
  const url =
      'https://res.cloudinary.com/jerrick/image/upload/c_scale,f_jpg,q_auto/602ccc72b2f2e2001df1a885.png';
  return Row(
    children: [
      // const Text(
      //   "Hey ",
      //   style: TextStyle(
      //       fontSize: 26,
      //       color: Color.fromARGB(255, 10, 99, 25),
      //       fontWeight: FontWeight.bold),
      // ),
      // Container(
      //   width: 194,
      //   child: Text(
      //     "${user.is_login ? user.username : "There"} !",
      //     style: const TextStyle(
      //         fontSize: 26,
      //         color: Color.fromARGB(255, 5, 77, 49),
      //         fontWeight: FontWeight.bold,
      //         overflow: TextOverflow.ellipsis),
      //   ),
      // ),
      const CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(url),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Hello There!',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 10, 99, 25))),
          SizedBox(height: 10),
          Text('Person name',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 10, 99, 25))),
          SizedBox(
            height: 10,
          ),
          Text('person@email.com',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 5, 77, 49)))
        ],
      )
    ],
  );
}
