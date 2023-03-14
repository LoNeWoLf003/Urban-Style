import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constrants/Icons.dart';
import '../constrants/color.dart';
import 'message_body.dart';

class text_feild_help_support extends StatefulWidget {
  const text_feild_help_support({Key? key}) : super(key: key);

  @override
  State<text_feild_help_support> createState() => _text_feild_help_supportState();
}

class _text_feild_help_supportState extends State<text_feild_help_support> {
  @override
  var message = new TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: ColorHelper.color[1],
            blurRadius: 20.0
          )
        ],
        color: ColorHelper.color[2].withOpacity(0.80)
      ),
      child: Row(
        children: [
          Expanded(child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 5),
              child: TextFormField(
                controller: message,
                cursorColor: ColorHelper.color[0],
                style: TextStyle(color: ColorHelper.color[0]),
                decoration: InputDecoration.collapsed(
                  hintStyle: TextStyle(color: ColorHelper.color[1],),
                  hintText: "Message...",
                ),
              ),
            ),
          )),
          InkWell(
            onTap: (){
              messageBody.setState(() {
                messageBody.messages.add({"message" : message.text , "type" : "user"});
              });
              setState(() {
                message.text = "";

              });
              messageBody.scrollDown();

            },
            child: Container(
              width: 40,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(IconHelper.icons[22],color: ColorHelper.color[0],),
              ),
            ),
          )
        ],
      ),
    );
  }
}
