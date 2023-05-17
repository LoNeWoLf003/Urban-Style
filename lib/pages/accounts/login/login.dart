import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/controllers/login/login.dart';
import 'package:urban_style/pages/accounts/sign%20up/sign%20up.dart';
import 'package:urban_style/widgets/gradient_button.dart';
import 'package:urban_style/widgets/textfeild.dart';

import '../../../constrants/Icons.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.color[0],
      body: context.isPhone
      ?SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
            SizedBox(height: 30,),
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18),
                  child: text_feild("Username" , IconHelper.icons[0] , login_controller.user_nane),
                )),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18),
                  child: text_feild("Phone Number" , IconHelper.icons[31] , login_controller.phone),
                )),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18,right: 18),
                child: InkWell(
                    onTap: (){
                      login_controller.validate(context);
                    },
                    child: gradient_button("LOGIN" , context)),
              ),
            ),
            SizedBox(height: 40,),
            Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sign_up()));
                  },
                  child: Text("New User ? Create New One",style: TextStyle(color: ColorHelper.color[3]),)),
            )),
            SizedBox(height: 10,),
          ],
        ),
      )
      :Row(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10/8,),
                  Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                  width: MediaQuery.of(context).size.width * 1.3/4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: text_feild("Username" , IconHelper.icons[0] , login_controller.user_nane),
                  )),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width * 1.3/4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: text_feild("Phone" , IconHelper.icons[1] , login_controller.phone),
                  )),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * 1.3/4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18),
                  child: InkWell(
                      onTap: (){
                        login_controller.validate(context);
                      },
                      child: gradient_button("LOGIN" , context)),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10/8,),
                  Text("Or Login Using",style: TextStyle(fontSize: 13),),
                ],
              ),
              SizedBox(height: 40,),
              Expanded(child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => sign_up()));
                    },
                    child: Text("New User ? Create New One",style: TextStyle(color: ColorHelper.color[3]),)),
              )),
              SizedBox(height: 10,),
            ],
          ),
          Expanded(child: Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Image.asset(assets.logo_background,height: double.infinity,width: MediaQuery.of(context).size.width * 3/4,fit: BoxFit.fill,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(assets.login_sign_up_side_image),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
