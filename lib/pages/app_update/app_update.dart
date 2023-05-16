import 'package:flutter/material.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/user/user.dart';
import 'package:url_launcher/url_launcher.dart';

class app_update extends StatelessWidget {
  const app_update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18,top: 18),
              child: SafeArea(
                  child: Text(
                    "We've got new Updates for you",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18,top: 18),
              child: Text(
                "* What's new",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18,top: 18),
              child: Text(
                "${user.update_info[0]["update_info"]}",
                style:
                TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: ()async{
                const url = 'https://grofy-six.vercel.app/';
                if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
                } else {
                throw 'Could not launch $url';
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ColorHelper.color[2]
                ),
                child: Center(
                  child: Text("UPDATE TO LATEST VERSION",style: TextStyle(color: ColorHelper.color[0]),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
