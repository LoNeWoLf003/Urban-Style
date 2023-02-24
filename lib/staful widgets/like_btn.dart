import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';

class like_btn extends StatefulWidget {
  const like_btn({Key? key}) : super(key: key);

  @override
  State<like_btn> createState() => _like_btnState();
}

class _like_btnState extends State<like_btn> {
  @override
  bool like = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,right: 8),
      child: Align(
          alignment: Alignment.centerRight,
          child: like == true
              ? InkWell(
            onTap: (){
              print("Changed");
              setState(() {
                like = false;
              });
            },
            child: Container(
                height: 40,
                width: 40,
                child: Icon(IconHelper.icons[16],color: ColorHelper.color[4],)),
          )
              : InkWell(
            onTap: (){
              print("Changed");
              setState(() {
                like = true;
              });
            },
            child: Container(
                height: 40,
                width: 40,
                child: Icon(IconHelper.icons[15],color: ColorHelper.color[1],)),
          )
      ),
    );
  }
}
