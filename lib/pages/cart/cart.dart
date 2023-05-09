import 'package:flutter/material.dart';
import 'package:urban_style/pages/account/account.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../../staful widgets/cart_bottom.dart';
import '../../staful widgets/cart_delete_btn.dart';
import '../navigation_drawer.dart/navbar.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  // @override

  // Widget build(BuildContext context) {

  //   return Scaffold(
  //       body: AnimatedDrawer(
  //         shadowColor: const Color(0xFF4c41a3),
  //         backgroundGradient: const LinearGradient(
  //           colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],),
  //         menuPageContent: Padding(
  //           padding: const  EdgeInsets.only(top: 100.0, left: 15),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               ClipRRect(
  //                 borderRadius: const BorderRadius.all(Radius.circular(80)),
  //                 child: Image.asset(assets.logo,fit: BoxFit.fill,height: 60,width: 60,),
  //               ),
  //               const SizedBox(height: 10,),
  //               Row(
  //                 children: [
  //                   const Text(
  //                     "Hey ",
  //                     style: TextStyle(
  //                         fontSize: 17,
  //                         color: Colors.white,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                   Text(
  //                     "There !",
  //                     style: TextStyle(
  //                         fontSize: 17,
  //                         color: Colors.blue[200],
  //                         fontWeight: FontWeight.bold),
  //                   )],
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 25),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home()));
  //                 },
  //                 child: Row(
  //                   children: [
  //                     Container(
  //                       child: Text(
  //                         "Home",
  //                         style: TextStyle(
  //                           color: ColorHelper.color[0],),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 20),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   if(user.is_login == true){
  //                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const account()));

  //                   }else{
  //                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const sign_up()));

  //                   }
  //                 },
  //                 child: Row(
  //                     children:[
  //                       Container(
  //                         child: Text(
  //                           "Account",
  //                           style: TextStyle(
  //                             color: ColorHelper.color[0],),
  //                         ),
  //                       ),
  //                     ]
  //                 ),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 20),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const my_order()));
  //                 },
  //                 child: Row(
  //                     children:[
  //                       Container(
  //                         child: Text(
  //                           "My Orders",
  //                           style: TextStyle(
  //                             color: ColorHelper.color[0],),
  //                         ),
  //                       ),
  //                     ]
  //                 ),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 20),
  //               ),
  //               InkWell(
  //                 onTap: (){

  //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const cart()));
  //                 },
  //                 child: Row(
  //                     children:[
  //                       Container(
  //                         child: Text(
  //                           "Cart",
  //                           style: TextStyle(
  //                             color: ColorHelper.color[0],),
  //                         ),
  //                       ),
  //                     ]
  //                 ),
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 20),
  //               ),
  //               Divider(
  //                 color: ColorHelper.r_g_b[3],
  //                 thickness: 2,
  //               ),
  //               const Padding(
  //                 padding: EdgeInsets.only(bottom: 20),
  //               ),
  //               InkWell(
  //                 onTap: (){
  //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const help_support()));
  //                 },
  //                 child: Row(
  //                     children:[
  //                       Container(
  //                         child: Text(
  //                           "Help & Support",
  //                           style: TextStyle(
  //                             color: ColorHelper.color[0],),
  //                         ),
  //                       ),
  //                     ]
  //                 ),
  //               ),
  //             ],),
  //         ),
  //     homePageContent: Container(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navigation(),
      appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Color.fromARGB(255, 10, 99, 25)),
          ),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
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
                        MaterialPageRoute(
                            builder: (context) => const account()),
                        (route) => false);
                  },
                  child: SafeArea(
                      child: Icon(
                    IconHelper.icons[28],
                    size: 44,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ))),
            ),
          ]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorHelper.r_g_b[2],
        child: Column(
          children: [
            Row(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: SafeArea(
                        child: Text(
                      "My Cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )),
                  ),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: cart_delete_btn()),
                ),
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            cart_bottom()
          ],
        ),
      ),
    );
  }
}
