import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/constrants/keys.dart';
import 'package:urban_style/controllers/engine/engine_controller.dart';
import 'package:urban_style/pages/home/home.dart';
import 'package:urban_style/pages/splash/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'controllers/checkout/checkout_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = '${keys.application_Id}';
  final keyClientKey = '${keys.client_key}';
  final keyParseServerUrl = '${keys.parse_server_url}';
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  print('done');
  print('done');

  runApp(const engine());
}

class engine extends StatelessWidget {
  const engine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,

      ),
      home: splash(), //splashscreen
      builder: EasyLoading.init(),
    );
  }
}
