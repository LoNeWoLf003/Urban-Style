import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/profile.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../controllers/account/account_controller.dart';
import '../../widgets/textfeild.dart';
import '../cart/cart.dart';
import '../help_support/help_support.dart';
import '../home/home.dart';
import '../my_orders/my order.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedDrawer(
          shadowColor: Color(0xFF4c41a3),
          backgroundGradient: LinearGradient(
            colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],),
          menuPageContent: Padding(
            padding: const  EdgeInsets.only(top: 100.0, left: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///// APNA LOGO /////////////////////////////
                  Row(
                    children: [
                      Text(
                        "Hey ",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "There !",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold),
                      )],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Container(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: ColorHelper.color[0],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => account()));
                    },
                    child: Container(
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: ColorHelper.color[0],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => help_support()));
                    },
                    child: Container(
                      child: Text(
                        "Help & Support",
                        style: TextStyle(
                          color: ColorHelper.color[0],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => cart()));
                    },
                    child: Container(
                      child: Text(
                        "Cart",
                        style: TextStyle(
                          color: ColorHelper.color[0],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Divider(
                    color: ColorHelper.r_g_b[3],
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => my_order()));
                    },
                    child: Text(
                      "My Orders",
                      style: TextStyle(
                        color: ColorHelper.color[0],
                      ),
                    ),
                  ),
                ],),
            ),
          ),
          homePageContent: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: ColorHelper.r_g_b[2],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 45,right: 18,top: 8),
                        child: Row(
                          children: [
                            Text("Account"),
                            Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Icon(IconHelper.icons[6]),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )),
                    SizedBox(height: 50,),
                  profile(),
                  SizedBox(height: 10,),
                  Center(
                    child: Text("${user.username}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                  ),
                  SizedBox(height: 10,),
                  Divider(color: ColorHelper.color[1],),
                  Row(
                    children: [
                      SizedBox(width: 5,),
                      Text("Profile Details",style: TextStyle(color: ColorHelper.color[1]),),
                      Expanded(child: Divider(color: ColorHelper.color[1],))
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(IconHelper.icons[0],color: ColorHelper.color[1],),
                        SizedBox(width: 5,),
                        Text(user.username , style: TextStyle(color: ColorHelper.color[1]),),
                        Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                              onTap: (){
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.info,
                                  body: Center(child: text_feild("Name", IconHelper.icons[0], account_controller.email)),
                                  title: 'New Name',
                                  desc:   'Enter new Name',
                                  btnOkText: "Save",
                                  btnOkOnPress: () {
                                    account_controller.change_email(context);
                                  },
                                ).show();
                              },
                              child: Icon(IconHelper.icons[18])),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(IconHelper.icons[5],color: ColorHelper.color[1],),
                        SizedBox(width: 5,),
                        Text(user.email , style: TextStyle(color: ColorHelper.color[1]),),
                        Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                              onTap: (){
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.info,
                                  body: Center(child: text_feild("Email", IconHelper.icons[0], account_controller.email)),
                                  title: 'New Email',
                                  desc:   'Enter new Email',
                                  btnOkText: "Save",
                                  btnOkOnPress: () {
                                    account_controller.change_email(context);
                                  },
                                ).show();
                              },
                              child: Icon(IconHelper.icons[18])),
                        ))
                      ],
                    ),
                  ),
                  context.isPhone ? SizedBox(height: 20,) : SizedBox(),
                  context.isPhone
                  ?Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(IconHelper.icons[12],color: ColorHelper.color[1],),
                        SizedBox(width: 5,),
                        Text("${user.sublocality} ," + "${user.locality} ," + "${user.postal_code}" , style: TextStyle(color: ColorHelper.color[1]),),

                      ],
                    ),
                  )
                      : SizedBox(),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(IconHelper.icons[6],color: ColorHelper.color[1],),
                        SizedBox(width: 5,),
                        Text("Cart" , style: TextStyle(color: ColorHelper.color[1]),),
                        Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("${user.cart.length}"),
                        )),
                        SizedBox(width: 8,)
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: InkWell(
                        onTap: (){
                          account_controller.logout(context);
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorHelper.color[0],
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorHelper.color[1],
                                    blurRadius: 30.0,
                                    offset: Offset(0,20)
                                )
                              ]
                          ),
                          child: Center(
                            child: Text("Log Out",style: TextStyle(color: ColorHelper.color[4]),),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: InkWell(
                        onTap: (){
                          account_controller.delete_account(context);
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorHelper.color[4],
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorHelper.color[1],
                                    blurRadius: 30.0,
                                    offset: Offset(0,20)
                                )
                              ]
                          ),
                          child: Center(
                            child: Text("Delete Account",style: TextStyle(color: ColorHelper.color[0]),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
