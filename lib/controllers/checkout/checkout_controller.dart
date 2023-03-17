
import 'package:flutter/cupertino.dart';
import 'package:flutter_sms/flutter_sms.dart';


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

  static void SendSMS(String message, no) async {
    String _result = await sendSMS(message: message, recipients: no)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }


}