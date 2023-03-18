import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';
import '../controllers/checkout/checkout_controller.dart';

class verify_alternate_phone extends StatefulWidget {
  const verify_alternate_phone({Key? key}) : super(key: key);

  @override
  State<verify_alternate_phone> createState() => _verify_alternate_phoneState();
}

class _verify_alternate_phoneState extends State<verify_alternate_phone> {
  @override
  bool clicked = false;
  bool send_otp = false;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        setState(() {
          clicked = true;
        });
        if(clicked == true){
          print('${checkout_controller.country_code}${checkout_controller.alternate_phone}');
          await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: '${checkout_controller.country_code.text}${checkout_controller.alternate_phone.text}',
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {},
            codeSent: (String verificationId, int? resendToken) {
              setState(() {
                checkout_controller.verification_id_2 = verificationId;
                send_otp = true;
              });
            },
            codeAutoRetrievalTimeout: (String verificationId) {},
          );
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 70,
        width: clicked ? send_otp ?120 :70 : double.infinity,
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
          child: clicked
              ? send_otp
              ? Row(
            children: [
              SizedBox(width: 13,),
              Text("Otp Send ",style: TextStyle(color: ColorHelper.color[0]),),
              Icon(IconHelper.icons[11],color: ColorHelper.color[0],)
            ],
          )
              :Center(
            child: CircularProgressIndicator(color: ColorHelper.color[0],),
          )
              :Text(
            "Verify Phone Number",
            style: TextStyle(color: ColorHelper.color[0]),
          ),
        ),
      ),
    );
  }
}
