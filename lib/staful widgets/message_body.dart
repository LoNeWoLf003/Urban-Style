import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../user/user.dart';
import '../widgets/message_card.dart';

late _message_bodyState messageBody ;
class message_body extends StatefulWidget {
  const message_body({Key? key}) : super(key: key);

  @override
  State<message_body> createState() {
    messageBody = _message_bodyState();
    return messageBody;
  }
}

class _message_bodyState extends State<message_body> {
  @override
  final ScrollController _controller = ScrollController();
  void scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  var messages = [
    {"message" : "Hi ${user.username == null ? "There" : user.username} !", "type" : "service"}
  ];
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemBuilder: (BuildContext context, int index) {
        return message_card(messages[index]["message"] , messages[index]["type"] , context.isPhone);
      },
      separatorBuilder: (BuildContext context, int index) {
        return  messages[index]["type"] == "user"
            ? Align(
          alignment: Alignment.centerRight,
        )
            : Align(
          alignment: Alignment.centerLeft,
        );
      },
      itemCount: messages.length,
    );
  }
}
