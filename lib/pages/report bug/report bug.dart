import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urban_style/controllers/bug/bug%20controller.dart';

import '../../constrants/Icons.dart';
import '../../constrants/color.dart';
import '../navigation_drawer.dart/navbar.dart';

class report_bug extends StatelessWidget {
  const report_bug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Navigation(),
        appBar: AppBar(

          // title: const Text(
          //   '',
          //   style: TextStyle(color: Color.fromARGB(255, 10, 99, 25)),
          // ),
            iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
            centerTitle: true,
            // backgroundColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Colors.transparent,
            elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: SafeArea(
                      child: Text(
                        "What's the Bug",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      )),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Bug Screen Shot",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),),
                  )),
              Padding(padding: EdgeInsets.only(left: 8,right: 8),
                child: InkWell(
                  onTap: (){
                    bug_controller.get_image(context);

                  },
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: ColorHelper.color[1])
                    ),
                    child: Center(
                      child: bug_controller.is_image
                          ? Image.memory(bug_controller.byte_image,fit: BoxFit.fill,)
                          :Icon(IconHelper.icons[17],color: ColorHelper.color[1],size: 44,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Explanation of Bug",style: TextStyle(fontSize: 15,color: ColorHelper.color[1]),),
                  )),
              Padding(padding: EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: ColorHelper.color[1])
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: bug_controller.bug_description,
                        cursorColor: ColorHelper.color[2],
                        maxLines: 10,
                        decoration: InputDecoration.collapsed(hintText: "Enter Here",),
                      ),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18,left: 8,right: 8,bottom: 28),
                child: InkWell(
                  onTap: (){
                    if(bug_controller.bug_description.text.isNotEmpty){
                      if(bug_controller.is_image == true){
                        bug_controller.submit_bug(context);
                      }else{
                        Get.snackbar("Cannot Proceed Without Image" , "Please Provide Image to Submit");

                      }
                    }else{
                      Get.snackbar("Cannot Proceed Without Description" , "Please Provide Bug Description to Submit");
                    }
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 5)
                    ),
                    child: Center(
                      child: Text("SUBMIT",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
