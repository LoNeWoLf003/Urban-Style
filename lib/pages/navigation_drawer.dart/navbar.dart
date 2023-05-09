import 'package:flutter/material.dart';
import 'package:urban_style/pages/cart/cart.dart';
import 'package:urban_style/pages/help_support/help_support.dart';
import 'package:urban_style/pages/my_orders/my%20order.dart';
import 'package:urban_style/pages/navigation_drawer.dart/sample.dart';
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
      child: Material(
        color: Color.fromARGB(255, 217,244,113),
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
                name: 'My Account',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'My Orders',
                  icon: Icons.account_box_rounded,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Cart',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Help & Support',
                  icon: Icons.favorite_outline,
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
                  onPressed: () => onItemPressed(context, index: 5)),
            ],
          ),
        ),
      ),
    );
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
  }
}

Widget headerWidget() {
  return Row(
    children: [
      const Text(
        "Hey ",
        style: TextStyle(
            fontSize: 26, color: Color.fromARGB(255, 10, 99, 25), fontWeight: FontWeight.bold),
      ),
      Text(
        "There !",
        style: TextStyle(
            fontSize: 26, color: Color.fromARGB(255, 5, 77, 49), fontWeight: FontWeight.bold),
      )
    ],
  );
}
