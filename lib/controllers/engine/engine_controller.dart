
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
          user.cart_price = data[0]["price"];
          user.obj_id = data[0]["objectId"];
          user.profile_photo = data[0]["profile_photo"];
          if(user.profile_photo == null){
            user.has_profile_photo = false;
          }else{
            user.has_profile_photo = true;
          }
          print("/////////////////////////////////////////////////");
          print("PRINTING USER DETAILS");
          print("user cart - " + "${user.cart}");
          print("user location - " + "${user.location}");
          print("user username - " + "${user.username}");
          print("user email - " + "${user.email}");
          print("user password - " + "${user.password}");
          print("user profile - " + "${user.profile_photo}");
        }
      }else{
        Get.snackbar(
          "Account Not Found",
          "Please create new Account",
        );
        user.is_login = false;
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
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude , position.longitude);
    user.location = placemarks;
    user.sublocality = placemarks[0].subLocality;
    user.locality = placemarks[0].locality;
    user.state = placemarks[1].administrativeArea;
    user.postal_code = placemarks[0].postalCode;
    print(placemarks);



  }

  calculate_minute(lat , long){
    var dist = calculateDistance(user.lat , user.long , lat , long);
    var minute = dist * 2 + 10;
    print(minute.toStringAsFixed(0));
    return minute.toStringAsFixed(0);
  }

  double calculateDistance(lat1, lon1, lat2, lon2){
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p)/2 +
        c(lat1 * p) * c(lat2 * p) *
            (1 - c((lon2 - lon1) * p))/2;
    return 12742 * asin(sqrt(a));
  }

  static initilize_firebase(phone)async{
    if(phone == true){
      await Firebase.initializeApp();
    }else{
      await Firebase.initializeApp(
          options: FirebaseOptions(apiKey: "AIzaSyD2booaGafuilDBIVG8M4Ml7FcBTHBNcMc", appId: "1:779807127457:web:8e9722b0f0974440f5fde0", messagingSenderId: "779807127457", projectId: "phone-firebase-86703")
      );
    }
  }



}

