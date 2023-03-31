import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';
import 'package:urban_style/user/user.dart';

class check_ok extends StatelessWidget {
  const check_ok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    checkout_controller().verify_all(user.lat , user.long , context);
    return Scaffold(
      backgroundColor: ColorHelper.r_g_b[9],
      body: Center(
        child: Container(
          child: Image.asset(assets.loading_gif),
        )
      ),
    );
  }
}
