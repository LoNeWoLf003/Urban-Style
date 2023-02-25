import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controllers/assets/assets.dart';
import '../../controllers/home/home_controller.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    home_controller.navigate(context);
    return Scaffold(
      body: Stack(
        children: [

          Image.asset(assets.logo_background,height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset(assets.logo),
            ),
          ),
        ],
      ),
    );
  }
}
