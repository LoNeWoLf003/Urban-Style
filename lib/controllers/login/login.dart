import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_style/user/user.dart';

import '../../pages/home/home.dart';

class login_controller{
  static TextEditingController user_nane = new TextEditingController();
  static TextEditingController password = new TextEditingController();

  static validate(context) async{
    if(user_nane.text == ""){
      Get.snackbar(
        "User Name not Valid",
        "Please Enter Valid User Name to continue",
      );
    }else{
      if(password.text == ""){
        Get.snackbar(
          "Password not Valid",
          "Please Enter Valid Password to continue",
        );
      }else{
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
            var data = apiResponse.results as List<ParseObject>;
            user.username = user_nane.text ;
            user.email = data[0]["email"];
            user.password = data[0]["password"];
            user.location = data[0]["location"];
            user.cart = data[0]["cart"];
            print("/////////////////////////////////////////////////");
            print("PRINTING USER DETAILS");
            print("user cart - " + "${user.cart}");
            print("user location - " + "${user.location}");
            print("user username - " + "${user.username}");
            print("user email - " + "${user.email}");
            print("user password - " + "${user.password}");
            user.is_login = true;
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home()), (route) => false);
          }



        }else{
          Get.snackbar(
            "User Doesn't Exist",
            "Please enter different username",
          );
        }

      }
    }
  }
}