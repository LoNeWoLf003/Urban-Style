import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_style/main.dart';
import 'package:urban_style/user/user.dart';

import '../../pages/home/home.dart';
import '../engine/engine_controller.dart';

class sign_up_controller {
  static TextEditingController user_nane = new TextEditingController();
  static TextEditingController email = new TextEditingController();
  static TextEditingController password = new TextEditingController();

  static validate(context) async {
    if (user_nane.text == "") {
      Get.snackbar(
        "User Name not Valid",
        "Please Enter Valid User Name to continue",
      );
    } else {
      if (email.text == "") {
        Get.snackbar(
          "Email not Valid",
          "Please Enter Valid Email to continue",
        );
      } else {
        if (password.text == "") {
          Get.snackbar(
            "Password not Valid",
            "Please Enter Valid Password to continue",
          );
        } else {
          final QueryBuilder<ParseObject> parseQuery =
          QueryBuilder<ParseObject>(ParseObject('users'));
          // `whereContains` is a basic query method that checks if string field
          // contains a specific substring
          parseQuery.whereContains('username', user_nane.text);

          // The query will resolve only after calling this method, retrieving
          // an array of `ParseObjects`, if success
          final ParseResponse apiResponse = await parseQuery.query();

          if (apiResponse.success && apiResponse.results != null) {
            for (var o in apiResponse.results!) {
              print((o as ParseObject).toString());
              Get.snackbar(
                "User Already Exist",
                "Please enter different username",
              );
            }
          }else{
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString("login", "true");
            prefs.setString("name", user_nane.text);

            user.is_login = true;
            print(user.location);
            final todo = ParseObject('users')..set('username', user_nane.text)..set('email', email.text)..set('password', password.text)..set('cart', [])..set('location', user.location);
            await todo.save();
            user.email = email.text;
            user.password = password.text;
            user.username = user_nane.text;
            user.cart = [];
            print("Account Created !!!");
            engine_controller().user_logged_in(context);
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home()), (route) => false);

          }
        }
      }
    }
  }
}
