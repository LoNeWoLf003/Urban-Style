import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrants/color.dart';
import '../user/user.dart';


class shoe_size extends StatefulWidget {
  shoe_size({Key? key, }) : super(key: key);

  @override
  State<shoe_size> createState() => _shoe_sizeState();
}

class _shoe_sizeState extends State<shoe_size> {
  @override
  void initState() {
    super.initState();
    if(user.selected_size == null){
      return ;
    }else{
      selected_size = user.selected_size;
      if(user.selected_size == "UK1"){
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
      }else{
        if(user.selected_size == "UK2"){
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
        }else{
          if(user.selected_size == "UK3"){
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
          }else{
            if(user.selected_size == "UK4"){
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
            }else{
              if(user.selected_size == "UK5"){
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
              }else{
                if(user.selected_size == "UK6"){
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
                }else{
                  if(user.selected_size == "UK7"){
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
                  }else{
                    if(user.selected_size == "UK8"){
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
                    }else{
                      if(user.selected_size == "UK9"){
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
                      }else{
                        if(user.selected_size == "UK10"){
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
                        }else{
                          if(user.selected_size == "UK11"){
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
                          }else{
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
  bool uk12 = false;
  bool uk13 = false;
  bool uk14 = false;
  bool uk15 = false;
  bool uk16 = false;
  bool uk17 = false;
  bool uk18 = false;
  bool uk19 = false;
  bool uk20 = false;
  bool uk21 = false;
  bool uk22 = false;
  bool uk23 = false;
  bool uk24 = false;
  bool uk25 = false;
  bool uk26 = false;

  var selected_size = "UK1";
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK1";
                user.selected_size = selected_size;
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
                child: Text("UK 1",style: TextStyle(color: uk1 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK2";
                user.selected_size = selected_size;
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
                child: Text("UK 2",style: TextStyle(color: uk2 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK3";
                user.selected_size = selected_size;
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
                child: Text("UK 3",style: TextStyle(color: uk3 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK4";
                user.selected_size = selected_size;
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
                child: Text("UK 4",style: TextStyle(color: uk4 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK5";
                user.selected_size = selected_size;
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
                child: Text("UK 5",style: TextStyle(color: uk5 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK6";
                user.selected_size = selected_size;
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
                child: Text("UK 6",style: TextStyle(color: uk6 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK7";
                user.selected_size = selected_size;
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
                child: Text("UK 7",style: TextStyle(color: uk7 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK8";
                user.selected_size = selected_size;
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
                child: Text("UK 8",style: TextStyle(color: uk8 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK9";
                user.selected_size = selected_size;
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
                child: Text("UK 9",style: TextStyle(color: uk9 ?ColorHelper.color[0] : ColorHelper.color[2]),),
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
                uk12 = false;
                uk13 = false;
                uk14 = false;
                uk15 = false;
                uk16 = false;
                uk17 = false;
                uk18 = false;
                uk19 = false;
                uk20 = false;
                uk21 = false;
                uk22 = false;
                uk23 = false;
                uk24 = false;
                uk25 = false;
                uk26 = false;
                selected_size = "UK10";
                user.selected_size = selected_size;
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
                child: Text("UK 10",style: TextStyle(color: uk10 ?ColorHelper.color[0] : ColorHelper.color[2]),),
              ),
            ),
          ),
        ]
    )
    )
    );
  }
}
