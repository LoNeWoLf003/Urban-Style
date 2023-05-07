import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/constrants/color.dart';

import '../../controllers/assets/assets.dart';
import '../../controllers/engine/engine_controller.dart';
import '../../controllers/home/home_controller.dart';
import '../home/home.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    engine_controller().user_logged_in(context);
    engine_controller.initilize_firebase(context.isPhone , context);
    print("Firebase Initilized");
    home_controller.load_item_for_search(context);
    print("Product Searching Completed");
    return Scaffold(
      backgroundColor: ColorHelper.color[0],
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset(assets.splash_logo),
            ),
          ),
        ],
      ),
    );
  }
}
