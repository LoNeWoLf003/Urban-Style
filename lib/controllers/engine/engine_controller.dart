
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_style/pages/accounts/sign%20up/sign%20up.dart';
import 'package:urban_style/user/user.dart';
import 'dart:io' show Platform;
import 'dart:math';


import '../../pages/accounts/login/login.dart';

class engine_controller{
  user_logged_in(context )async{
    getCurrentLocation();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString("login") == null){
      user.is_login = false;
    }else{
      user.is_login = true;
      user.username = prefs.getString("name");
      final QueryBuilder<ParseObject> parseQuery =
      QueryBuilder<ParseObject>(ParseObject('users'));
      // `whereContains` is a basic query method that checks if string field
      // contains a specific substring
      parseQuery.whereContains('username', user.username);

      // The query will resolve only after calling this method, retrieving
      // an array of `ParseObjects`, if success
      final ParseResponse apiResponse = await parseQuery.query();

      if (apiResponse.success && apiResponse.results != null) {
        for (var o in apiResponse.results!) {
          var data = apiResponse.results as List<ParseObject>;
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
        }
      }else{
        Get.snackbar(
          "Account Not Found",
          "Please create new Account",
        );
        prefs.remove("login");
        prefs.remove("name");
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => sign_up()), (route) => false);
      }
    }
    }

    Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print("Position got !!");
    user.lat = position.latitude;
    user.long = position.longitude ;
    print(position);
    // var dist = calculateDistance(user.lat , user.long , 23.389278 , 85.340560);
    // print(dist);
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude , position.longitude);
    user.location = placemarks;
    user.sublocality = placemarks[0].subLocality;
    user.locality = placemarks[0].locality;
    user.postal_code = placemarks[0].postalCode;
    print(placemarks);



  }

  double calculateDistance(lat1, lon1, lat2, lon2){
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p)/2 +
        c(lat1 * p) * c(lat2 * p) *
            (1 - c((lon2 - lon1) * p))/2;
    return 12742 * asin(sqrt(a));
  }


}

