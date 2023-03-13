import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/color.dart';
import '../user/user.dart';

class shirt_size extends StatefulWidget {
  shirt_size({Key? key,}) : super(key: key);

  @override
  State<shirt_size> createState() => _shirt_sizeState();
}

class _shirt_sizeState extends State<shirt_size> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(user.selected_shirt_size == null){
      return ;
    }else{
      size = user.selected_shirt_size;
      if(size == "XL"){
        uk1 = true;
        uk2 = false;
         uk3 = false;
         uk4 = false;
         uk5 = false;
         uk6 = false;
         uk7 = false;
         uk8 = false;
         uk9 = false;
         uk10 = false;
         uk11 = false;

      }else {
        if(size == "S"){
           uk1 = false;
           uk2 = true;
           uk3 = false;
           uk4 = false;
           uk5 = false;
           uk6 = false;
           uk7 = false;
           uk8 = false;
           uk9 = false;
           uk10 = false;
           uk11 = false;

        }else {
          if(size == "M"){
             uk1 = false;
             uk2 = false;
             uk3 = true;
             uk4 = false;
             uk5 = false;
             uk6 = false;
             uk7 = false;
             uk8 = false;
             uk9 = false;
             uk10 = false;
             uk11 = false;

          }else {
            if(size == "L"){
               uk1 = false;
               uk2 = false;
               uk3 = false;
               uk4 = false;
               uk5 = true;
               uk6 = false;
               uk7 = false;
               uk8 = false;
               uk9 = false;
               uk10 = false;
               uk11 = false;

            }else {
              if(size == "XL"){
                 uk1 = false;
                 uk2 = false;
                 uk3 = false;
                 uk4 = false;
                 uk5 = false;
                 uk6 = false;
                 uk7 = true;
                 uk8 = false;
                 uk9 = false;
                 uk10 = false;
                 uk11 = false;

              }else {
                if(size == "XXL"){
                   uk1 = false;
                   uk2 = false;
                   uk3 = false;
                   uk4 = false;
                   uk5 = false;
                   uk6 = false;
                   uk7 = false;
                   uk8 = false;
                   uk9 = true;
                   uk10 = false;
                   uk11 = false;

                }else {
                  if(size == "XXXL"){
                     uk1 = false;
                     uk2 = false;
                     uk3 = false;
                     uk4 = false;
                     uk5 = false;
                     uk6 = false;
                     uk7 = false;
                     uk8 = false;
                     uk9 = false;
                     uk10 = false;
                     uk11 = true;

                  }else {
                    return ;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  bool uk1 = true;
  bool uk2 = false;
  bool uk3 = false;
  bool uk4 = false;
  bool uk5 = false;
  bool uk6 = false;
  bool uk7 = false;
  bool uk8 = false;
  bool uk9 = false;
  bool uk10 = false;
  bool uk11 = false;

  var size = "XS";
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = true;
                uk2 = false;
                uk3 = false;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
                size = "XS";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk1 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XS",style: TextStyle(color: uk1 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),
          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = true;
                uk3 = false;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
                size = "S";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk2 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("S",style: TextStyle(color: uk2 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),
          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = false;
                uk3 = true;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
                size = "M";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk3 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("M",style: TextStyle(color: uk3 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),

          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = false;
                uk3 = false;
                uk4 = false;
                uk5 = true;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
                size = "L";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk5 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("L",style: TextStyle(color: uk5 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),

          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = false;
                uk3 = false;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = true;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
                size = "XL";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk7 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XL",style: TextStyle(color: uk7 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),

          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = false;
                uk3 = false;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = true;
                uk10 = false;
                uk11 = false;
                size = "XXL";
                user.selected_shirt_size = size;

              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk9 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XXL",style: TextStyle(color: uk9 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),

          SizedBox(width: 8,),
          InkWell(
            onTap: (){
              setState(() {
                uk1 = false;
                uk2 = false;
                uk3 = false;
                uk4 = false;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = true;
                size = "XXXL";
                user.selected_shirt_size = size;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk11 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XXXL",style: TextStyle(color: uk11 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),
          SizedBox(width: 8,),
          ]
    ),
    )
    );
  }
}
