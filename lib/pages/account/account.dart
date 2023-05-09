import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban_style/user/user.dart';
import 'package:urban_style/widgets/profile.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../controllers/account/account_controller.dart';
import '../../controllers/assets/assets.dart';
import '../../widgets/textfeild.dart';
import '../accounts/sign up/sign up.dart';
import '../cart/cart.dart';
import '../help_support/help_support.dart';
import '../home/home.dart';
import '../my_orders/my order.dart';
import '../navigation_drawer.dart/navbar.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navigation(),
      appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Color.fromARGB(255, 10, 99, 25)),
          ),
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,

          // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => const cart()),
                        (route) => false);
                  },
                  child: const SafeArea(
                      child: Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ))),
            ),
          ]),
      body: Container(
        // shadowColor: const Color(0xFF4c41a3),
        // backgroundGradient: const LinearGradient(
        //   colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
        // ),
        // menuPageContent: Padding(
        //   padding: const EdgeInsets.only(top: 100.0, left: 15),
        //   child: Container(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         ClipRRect(
        //           borderRadius: const BorderRadius.all(Radius.circular(80)),
        //           child: Image.asset(
        //             assets.logo,
        //             fit: BoxFit.fill,
        //             height: 60,
        //             width: 60,
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 10,
        //         ),
        //         Row(
        //           children: [
        //             const Text(
        //               "Hey ",
        //               style: TextStyle(
        //                   fontSize: 17,
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //             Text(
        //               "There !",
        //               style: TextStyle(
        //                   fontSize: 17,
        //                   color: Colors.blue[200],
        //                   fontWeight: FontWeight.bold),
        //             )
        //           ],
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 25),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             Navigator.of(context).pushReplacement(
        //                 MaterialPageRoute(builder: (context) => home()));
        //           },
        //           child: Row(
        //             children: [
        //               Container(
        //                 child: Text(
        //                   "Home",
        //                   style: TextStyle(
        //                     color: ColorHelper.color[0],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 20),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             if (user.is_login == true) {
        //               Navigator.of(context).pushReplacement(
        //                   MaterialPageRoute(builder: (context) => const account()));
        //             } else {
        //               Navigator.of(context).pushReplacement(
        //                   MaterialPageRoute(builder: (context) => const sign_up()));
        //             }
        //           },
        //           child: Row(children: [
        //             Container(
        //               child: Text(
        //                 "Account",
        //                 style: TextStyle(
        //                   color: ColorHelper.color[0],
        //                 ),
        //               ),
        //             ),
        //           ]),
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 20),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             Navigator.of(context).pushReplacement(
        //                 MaterialPageRoute(builder: (context) => const my_order()));
        //           },
        //           child: Row(children: [
        //             Container(
        //               child: Text(
        //                 "My Orders",
        //                 style: TextStyle(
        //                   color: ColorHelper.color[0],
        //                 ),
        //               ),
        //             ),
        //           ]),
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 20),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             Navigator.of(context).pushReplacement(
        //                 MaterialPageRoute(builder: (context) => const cart()));
        //           },
        //           child: Row(children: [
        //             Container(
        //               child: Text(
        //                 "Cart",
        //                 style: TextStyle(
        //                   color: ColorHelper.color[0],
        //                 ),
        //               ),
        //             ),
        //           ]),
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 20),
        //         ),
        //         Divider(
        //           color: ColorHelper.r_g_b[3],
        //           thickness: 2,
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.only(bottom: 20),
        //         ),
        //         InkWell(
        //           onTap: () {
        //             Navigator.of(context).pushReplacement(MaterialPageRoute(
        //                 builder: (context) => const help_support()));
        //           },
        //           child: Row(children: [
        //             Container(
        //               child: Text(
        //                 "Help & Support",
        //                 style: TextStyle(
        //                   color: ColorHelper.color[0],
        //                 ),
        //               ),
        //             ),
        //           ]),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorHelper.r_g_b[2],
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SafeArea(
              //     child: Padding(
              //   padding: const EdgeInsets.only(left: 45, right: 18, top: 8),
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child: Align(
              //         alignment: Alignment.centerRight,
              //         child: InkWell(
              //           onTap: () {
              //             Navigator.of(context).pushReplacement(
              //                 MaterialPageRoute(
              //                     builder: (context) => const cart()));
              //           },
              //           child: Container(
              //             height: 30,
              //             width: 30,
              //             child: Icon(IconHelper.icons[6]),
              //           ),
              //         ),
              //       ))
              //     ],
              //   ),
              // )),
              const profile(),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "${user.username}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: ColorHelper.color[1],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Profile Details",
                    style: TextStyle(color: ColorHelper.color[1]),
                  ),
                  Expanded(
                      child: Divider(
                    color: ColorHelper.color[1],
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    Icon(
                      IconHelper.icons[0],
                      color: ColorHelper.color[1],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      user.username,
                      style: TextStyle(color: ColorHelper.color[1]),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              animType: AnimType.scale,
                              dialogType: DialogType.info,
                              body: Center(
                                  child: text_feild("Name", IconHelper.icons[0],
                                      account_controller.email)),
                              title: 'New Name',
                              desc: 'Enter new Name',
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    Icon(
                      IconHelper.icons[5],
                      color: ColorHelper.color[1],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      user.email,
                      style: TextStyle(color: ColorHelper.color[1]),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              animType: AnimType.scale,
                              dialogType: DialogType.info,
                              body: Center(
                                  child: text_feild(
                                      "Email",
                                      IconHelper.icons[0],
                                      account_controller.email)),
                              title: 'New Email',
                              desc: 'Enter new Email',
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
              context.isPhone
                  ? const SizedBox(
                      height: 20,
                    )
                  : const SizedBox(),
              context.isPhone
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Icon(
                            IconHelper.icons[12],
                            color: ColorHelper.color[1],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${user.sublocality} ," +
                                "${user.locality} ," +
                                "${user.postal_code}",
                            style: TextStyle(color: ColorHelper.color[1]),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    Icon(
                      IconHelper.icons[6],
                      color: ColorHelper.color[1],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(color: ColorHelper.color[1]),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("${user.cart.length}"),
                    )),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: InkWell(
                    onTap: () {
                      account_controller.logout(context);
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorHelper.color[0],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: ColorHelper.color[1],
                                blurRadius: 30.0,
                                offset: const Offset(0, 20))
                          ]),
                      child: Center(
                        child: Text(
                          "Log Out",
                          style: TextStyle(color: ColorHelper.color[4]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: InkWell(
                    onTap: () {
                      account_controller.delete_account(context);
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorHelper.color[4],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: ColorHelper.color[1],
                                blurRadius: 30.0,
                                offset: const Offset(0, 20))
                          ]),
                      child: Center(
                        child: Text(
                          "Delete Account",
                          style: TextStyle(color: ColorHelper.color[0]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
