
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/payment_success.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

import '../../main.dart';
import '../../pages/my_orders/my order.dart';
import '../../staful widgets/order_confirmation_body.dart';
import '../../widgets/check_everything_assign.dart';



class checkout_controller{
  static TextEditingController name = new TextEditingController();
  static TextEditingController country_code = new TextEditingController();
  static TextEditingController phone = new TextEditingController();
  static TextEditingController otp = new TextEditingController();
  static TextEditingController alternate_phone = new TextEditingController();
  static TextEditingController alternate_phone_otp = new TextEditingController();
  static TextEditingController landmark = new TextEditingController();
  static TextEditingController locality = new TextEditingController();
  static TextEditingController pincode = new TextEditingController();
  static TextEditingController city = new TextEditingController();
  static TextEditingController state = new TextEditingController();
  static TextEditingController brief_address = new TextEditingController();

  static var verification_id ;
  static var verification_id_2 ;

  var paymentIntent ;

  static bool is_payment_done = false;



  static verify_otp()async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    if(otp.text.isEmpty){
      Get.snackbar("Wrong OTP ", "Please Enter Correct OTP to continue");
    }else{
      try{
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: checkout_controller.verification_id, smsCode: checkout_controller.otp.text);

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
      }catch(e){
        Get.snackbar("Wrong OTP ", "Please Enter Correct OTP to continue");
      }
    }
  }

  static verify_otp_alternate()async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    if(alternate_phone_otp.text.isEmpty){
      Get.snackbar("Wrong OTP ", "Please Enter Correct OTP to continue");
    }else{
      try{
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: checkout_controller.verification_id_2, smsCode: checkout_controller.alternate_phone_otp.text);

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
      }catch(e){
        Get.snackbar("Wrong Alternate Phone OTP ", "Please Enter Correct Alternate Phone OTP to continue");
      }
    }
  }


  open_razorpay(amount , context){


  }


  update_my_orders()async{
    var todo1 = ParseObject('users')
      ..objectId = user.obj_id
      ..set('my_orders', user.my_orders);
    await todo1.save();
    print("My Orders Updated");
 }




  verify_all(lat , long , context) async{
    for(var times in user.cart){
      var la_t = lat;
      var lon_g = long;
      print("Process Started");
      print(is_payment_done);
      if(is_payment_done == true){
        print(is_payment_done);
        double meters = 500;

        double coef = meters / 111320.0;

        double new_lat = lat + coef;

        double new_long = long + coef / cos(lat * 0.01745);
        QueryBuilder<ParseObject> queryTodo =
        QueryBuilder<ParseObject>(ParseObject('deliveryBoy'));
        final ParseResponse apiResponse = await queryTodo.query();

        if (apiResponse.success && apiResponse.results != null) {
          for (var boy in apiResponse.results !) {
            print(boy);
            bool avail = isPersonAvailable(Person(latitude: boy["lat"], longitude: boy["long"]), user.lat, user.long, new_lat, new_long, 1);
            print(avail);
            if(avail == true){
              if(boy["is_active"] == true){
                if(boy["order"].isEmpty){

                  var todo = ParseObject('deliveryBoy')
                    ..objectId = boy["objectId"]
                    ..set('order', [checkout_bodY.widget.products]);
                  await todo.update();
                  print("Statues Saved");
                }else{
                  print(boy["order"]);
                  print("Boy Doesn't have value");
                  verify_all(la_t, lon_g , context);
                }
              }else{
                verify_all(la_t, lon_g , context);
              }
            }else{
              verify_all(la_t, lon_g , context);
            }
          }
        } else {
          return [];
        }

      }else{
        verify_all(la_t, lon_g , context);
      }
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => payment_success()));


  }



  bool isPersonAvailable(Person person, double startLat, double startLong, double endLat, double endLong, double maxDistance) {
    const double earthRadius = 6371.0; // Earth's radius in km
    double latDiff = (endLat - startLat) * pi / 180.0;
    double longDiff = (endLong - startLong) * pi / 180.0;
    double startLatRad = startLat * pi / 180.0;
    double endLatRad = endLat * pi / 180.0;

    double a = sin(latDiff / 2) * sin(latDiff / 2) +
        sin(longDiff / 2) * sin(longDiff / 2) *
            cos(startLatRad) * cos(endLatRad);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    double distance = earthRadius * c;

    return distance <= maxDistance;
  }



}

class Person {
  double latitude;
  double longitude;

  Person({required this.latitude, required this.longitude});
}