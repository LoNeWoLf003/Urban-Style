
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/payment_success.dart';
import 'package:http/http.dart' as http;

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

  _handlePaymentSuccess(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => payment_success()));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }

  open_razorpay(amount , context){
    var _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess(context));
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    var options = {
      'key': 'rzp_test_BkBJbDxdJzYeW6',
      'amount': amount * 100,
      'name': '${user.username == null ?"Default" : user.username}',
      'description': '',
      'prefill': {
        'contact': '8888888888',
        'email': 'test@razorpay.com'
      }
    };
    _razorpay.open(options);
  }





}