
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


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

  static verify_all()async{
    alternate_phone.text = "999944443333";
    alternate_phone_otp.text = "000333";
    verify_otp();
    // verify_otp_alternate();
    if(name.text.isEmpty){
      Get.snackbar("Name not valid", "Please Enter Correct Name to continue");
    }else{
      if(country_code.text.isEmpty){
        Get.snackbar("Country Code not valid", "Please Enter Correct Country Code to continue");
      }else{
        if(phone.text.isEmpty){
          Get.snackbar("Phone Number not valid", "Please Enter Correct Phone Number to continue");
        }else{
          if(otp.text.isEmpty){
            Get.snackbar("Otp not valid", "Please Enter Correct Otp to continue");
          }else{
            if(alternate_phone.text.isEmpty){
              Get.snackbar("Alternate Phone Number not valid", "Please Enter Correct Alternate Phone Number to continue");
            }else{
              if(alternate_phone_otp.text.isEmpty){
                Get.snackbar("Alternate Phone Otp not valid", "Please Enter Correct Alternate Phone Otp to continue");
              }else{
                if(landmark.text.isEmpty){
                  Get.snackbar("Landmark not valid", "Please Enter Correct Landmark to continue");
                }else{
                  if(locality.text.isEmpty){
                    Get.snackbar("Locality not valid", "Please Enter Correct Locality to continue");
                  }else{
                    if(pincode.text.isEmpty){
                      Get.snackbar("Pincode not valid", "Please Enter Correct Pincode to continue");
                    }else{
                      if(city.text.isEmpty){
                        Get.snackbar("City not valid", "Please Enter Correct City to continue");
                      }else{
                        if(state.text.isEmpty){
                          Get.snackbar("State not valid", "Please Enter Correct State to continue");
                        }else{
                          if(brief_address.text.isEmpty){
                            Get.snackbar("Brief Address not valid", "Please Enter Correct Brief Address to continue");
                          }else{
                            return "All Okay";
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

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

}