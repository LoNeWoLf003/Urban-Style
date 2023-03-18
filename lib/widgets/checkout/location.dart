import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urban_style/controllers/checkout/checkout_controller.dart';
import 'package:urban_style/staful%20widgets/checkout/verify_first_page.dart';
import 'package:urban_style/staful%20widgets/verify_phone.dart';
import 'package:urban_style/widgets/checkout/checkout_text_feild.dart';

import '../../constrants/color.dart';
import '../../staful widgets/verify_alternate_phone.dart';

class location extends StatelessWidget {
  location({Key? key}) : super(key: key);

  Future<List<String>> getcountryCode(String query) async {
    List<String> data = ['+91', '+92', '+93', '+355'];

    return await Future.delayed(const Duration(seconds: 1), () {
      return data.where((e) {
        return e.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20,),
          checkout_text_feild(
              "Name", "Enter Name", "Str", checkout_controller.name),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 83),
                        child: Text("Code" , style: TextStyle(color: ColorHelper.color[1]),),
                      )),
                  Container(
                    height: 70,
                    width: 140,
                    decoration: BoxDecoration(
                        color: ColorHelper.color[0],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: ColorHelper.r_g_b[6])
                    ),
                    child: Center(
                      child: CustomDropdown.searchRequest(
                        futureRequest: getcountryCode,
                        controller: checkout_controller.country_code,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: checkout_text_feild(
                    "Phone", "Enter Phone", "Num", checkout_controller.phone),
              ),

            ],
          ),
          Padding(
              padding: EdgeInsets.all(18),
              child : Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    color: ColorHelper.r_g_b[7],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 8,right: 8,bottom: 10),
                      child: verify_phone(),
                    ),
                    checkout_text_feild("OTP", "Enter Otp", "Num", checkout_controller.otp),
                  ],
                ),
              )
          ),
          // SizedBox(height: 10,),
          // Row(
          //   children: [
          //     SizedBox(width: 20,),
          //     Column(
          //       children: [
          //         Align(
          //             alignment: Alignment.centerLeft,
          //             child: Padding(
          //               padding: const EdgeInsets.only(right: 83),
          //               child: Text("Code" , style: TextStyle(color: ColorHelper.color[1]),),
          //             )),
          //         Container(
          //           height: 70,
          //           width: 140,
          //           decoration: BoxDecoration(
          //               color: ColorHelper.color[0],
          //               borderRadius: BorderRadius.all(Radius.circular(20)),
          //               border: Border.all(color: ColorHelper.r_g_b[6])
          //           ),
          //           child: Center(
          //             child: CustomDropdown.searchRequest(
          //               futureRequest: getcountryCode,
          //               controller: checkout_controller.country_code,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Expanded(
          //       child: checkout_text_feild(
          //           "Alternate Phone", "Enter Alternate Phone", "Num", checkout_controller.alternate_phone),
          //     ),
          //
          //   ],
          // ),
          // Padding(
          //     padding: EdgeInsets.all(18),
          //     child : Container(
          //       width: double.infinity,
          //       height: 220,
          //       decoration: BoxDecoration(
          //           color: ColorHelper.r_g_b[7],
          //           borderRadius: BorderRadius.all(Radius.circular(20))
          //       ),
          //       child: Column(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(top: 20,left: 8,right: 8,bottom: 10),
          //             child: verify_alternate_phone(),
          //           ),
          //           checkout_text_feild("OTP", "Enter Otp", "Num", checkout_controller.alternate_phone_otp),
          //         ],
          //       ),
          //     )
          // ),
          SizedBox(height: 20,),
          checkout_text_feild(
              "Landmark(optional)", "Enter Landmark", "Str", checkout_controller.landmark),

          SizedBox(height: 20,),
          checkout_text_feild(
              "Locality", "Enter Locality", "Str", checkout_controller.locality),

          SizedBox(height: 20,),
          checkout_text_feild(
              "Pincode", "Enter Pincode", "Num", checkout_controller.pincode),

          SizedBox(height: 20,),
          checkout_text_feild(
              "City", "Enter City", "Str", checkout_controller.city),
          SizedBox(height: 20,),
          checkout_text_feild(
              "State", "Enter State", "Str", checkout_controller.state),
          SizedBox(height: 20,),
          checkout_text_feild(
              "Brief Address", "Enter Brief Address", "Str", checkout_controller.brief_address),
          SizedBox(height: 20,),
          verify_first_page()
        ],
      ),
    );
  }
}
