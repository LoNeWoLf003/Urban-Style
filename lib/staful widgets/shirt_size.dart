import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/color.dart';

class shirt_size extends StatefulWidget {
  const shirt_size({Key? key}) : super(key: key);

  @override
  State<shirt_size> createState() => _shirt_sizeState();
}

class _shirt_sizeState extends State<shirt_size> {
  @override
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
                uk4 = true;
                uk5 = false;
                uk6 = false;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;
              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk4 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("M1",style: TextStyle(color: uk4 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk6 = true;
                uk7 = false;
                uk8 = false;
                uk9 = false;
                uk10 = false;
                uk11 = false;

              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk6 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("L1",style: TextStyle(color: uk6 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk8 = true;
                uk9 = false;
                uk10 = false;
                uk11 = false;

              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk8 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XL1",style: TextStyle(color: uk8 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk10 = true;
                uk11 = false;

              });
            },
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: uk10 ?ColorHelper.color[8] : ColorHelper.color[0],
                  boxShadow: [
                    BoxShadow(
                        color: ColorHelper.color[1],
                        blurRadius: 10.0
                    )
                  ]
              ),
              child: Center(
                child: Text("XXL1",style: TextStyle(color: uk10 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
