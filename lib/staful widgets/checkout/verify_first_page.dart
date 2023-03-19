import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urban_style/controllers/cart/cart%20controller.dart';
import 'package:urban_style/staful%20widgets/checkout_status_bar.dart';
import 'package:urban_style/staful%20widgets/order_confirmation_body.dart';
import 'package:urban_style/staful%20widgets/verify_phone.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../controllers/checkout/checkout_controller.dart';

class verify_first_page extends StatefulWidget {
  const verify_first_page({Key? key}) : super(key: key);

  @override
  State<verify_first_page> createState() => _verify_first_pageState();
}

class _verify_first_pageState extends State<verify_first_page> {
  @override
bool okay = false;
  bool process = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: ()async{
          Get.snackbar("Verifying Please Wait ... ", "Verifying Please Wait few seconds" );
          setState(() {
            process = true;
          });
          checkout_controller.alternate_phone.text = "999944443333";
          checkout_controller.alternate_phone_otp.text = "000333";
          checkout_controller.verify_otp();
          // verify_otp_alternate();
          if(checkout_controller.name.text.isEmpty){
            Get.snackbar("Name not valid", "Please Enter Correct Name to continue");
            setState(() {
              process = false;
            });
            verifyPhone.setState(() {
              verifyPhone.clicked = false;
              verifyPhone.send_otp = false;
            });
            checkout_controller.otp.text = "";

          }else{
            if(checkout_controller.country_code.text.isEmpty){
              Get.snackbar("Country Code not valid", "Please Enter Correct Country Code to continue");
              setState(() {
                process = false;
              });
              verifyPhone.setState(() {
                verifyPhone.clicked = false;
                verifyPhone.send_otp = false;
              });
              checkout_controller.otp.text = "";

            }else{
              if(checkout_controller.phone.text.isEmpty){
                Get.snackbar("Phone Number not valid", "Please Enter Correct Phone Number to continue");
                setState(() {
                  process = false;
                });
                verifyPhone.setState(() {
                  verifyPhone.clicked = false;
                  verifyPhone.send_otp = false;
                });
                checkout_controller.otp.text = "";

              }else{
                if(checkout_controller.otp.text.isEmpty){
                  Get.snackbar("Otp not valid", "Please Enter Correct Otp to continue");
                  setState(() {
                    process = false;
                  });
                  verifyPhone.setState(() {
                    verifyPhone.clicked = false;
                    verifyPhone.send_otp = false;
                  });
                  checkout_controller.otp.text = "";

                }else{
                  if(checkout_controller.alternate_phone.text.isEmpty){
                    Get.snackbar("Alternate Phone Number not valid", "Please Enter Correct Alternate Phone Number to continue");
                    setState(() {
                      process = false;
                    });
                    verifyPhone.setState(() {
                      verifyPhone.clicked = false;
                      verifyPhone.send_otp = false;
                    });
                    checkout_controller.otp.text = "";

                  }else{
                    if(checkout_controller.alternate_phone_otp.text.isEmpty){
                      Get.snackbar("Alternate Phone Otp not valid", "Please Enter Correct Alternate Phone Otp to continue");
                      setState(() {
                        process = false;
                      });
                      verifyPhone.setState(() {
                        verifyPhone.clicked = false;
                        verifyPhone.send_otp = false;
                      });
                      checkout_controller.otp.text = "";

                    }else{
                      if(checkout_controller.landmark.text.isEmpty){
                        Get.snackbar("Landmark not valid", "Please Enter Correct Landmark to continue");
                        setState(() {
                          process = false;
                        });
                        verifyPhone.setState(() {
                          verifyPhone.clicked = false;
                          verifyPhone.send_otp = false;
                        });
                        checkout_controller.otp.text = "";

                      }else{
                        if(checkout_controller.locality.text.isEmpty){
                          Get.snackbar("Locality not valid", "Please Enter Correct Locality to continue");
                          setState(() {
                            process = false;
                          });
                          verifyPhone.setState(() {
                            verifyPhone.clicked = false;
                            verifyPhone.send_otp = false;
                          });
                          checkout_controller.otp.text = "";

                        }else{
                          if(checkout_controller.pincode.text.isEmpty){
                            Get.snackbar("Pincode not valid", "Please Enter Correct Pincode to continue");
                            setState(() {
                              process = false;
                            });
                            verifyPhone.setState(() {
                              verifyPhone.clicked = false;
                              verifyPhone.send_otp = false;
                            });
                            checkout_controller.otp.text = "";

                          }else{
                            if(checkout_controller.city.text.isEmpty){
                              Get.snackbar("City not valid", "Please Enter Correct City to continue");
                              setState(() {
                                process = false;
                              });
                              verifyPhone.setState(() {
                                verifyPhone.clicked = false;
                                verifyPhone.send_otp = false;
                              });
                              checkout_controller.otp.text = "";

                            }else{
                              if(checkout_controller.state.text.isEmpty){
                                Get.snackbar("State not valid", "Please Enter Correct State to continue");
                                setState(() {
                                  process = false;
                                });
                                verifyPhone.setState(() {
                                  verifyPhone.clicked = false;
                                  verifyPhone.send_otp = false;
                                });
                                checkout_controller.otp.text = "";

                              }else{
                                if(checkout_controller.brief_address.text.isEmpty){
                                  Get.snackbar("Brief Address not valid", "Please Enter Correct Brief Address to continue");
                                  setState(() {
                                    process = false;
                                  });
                                  verifyPhone.setState(() {
                                    verifyPhone.clicked = false;
                                    verifyPhone.send_otp = false;
                                  });
                                  checkout_controller.otp.text = "";

                                }else{
                                  check_status_Bar.setState(() {
                                    check_status_Bar.part_1 = true;
                                  });
                                  checkout_bodY.setState(() {
                                    checkout_bodY.index = 1;
                                  });
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
        },
        child: Container(
          height: 70,
          width: okay == true ?70 :double.infinity,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(20)),
              color: ColorHelper.color[3],
              boxShadow: [
                BoxShadow(
                    color: ColorHelper.color[3],
                    blurRadius: 20.0)
              ]),
          child: Center(
            child: process
                ? CircularProgressIndicator(color: ColorHelper.color[0],)
                : okay == true
                ? Icon(IconHelper.icons[11])
                :Text(
              "Save",
              style: TextStyle(color: ColorHelper.color[0]),
            ),
          ),
        ),
      ),
    );
  }
}
