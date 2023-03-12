import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/home/home_controller.dart';

import '../controllers/assets/assets.dart';
import '../widgets/product_info.dart';
import 'like_btn.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  var _foundUsers = [];

  initState() {
    // at the beginning, all users are shown
    _foundUsers = home_controller.all_item;
    super.initState();
  }

  var results = [];

  void _runFilter(String enteredKeyword) {
    var results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = home_controller.all_item;
    } else {
      print(home_controller.all_item[0]["title"]);
      results = home_controller.all_item
          .where((user) => user["title"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.color[0],
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                SizedBox(width: 8,),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    color: ColorHelper.color[9].withOpacity(0.30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          color: ColorHelper.color[9],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(IconHelper.icons[7],color: ColorHelper.color[0],size: 17,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            border: Border.all(color: ColorHelper.color[1])),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: TextFormField(
                              onChanged: (value) => _runFilter(value),
                              cursorColor: ColorHelper.color[2],
                              decoration: InputDecoration.collapsed(
                                  hintText: "Search here"),
                            ),
                          ),
                        ),
                      )),
                ),

                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    color: ColorHelper.color[9].withOpacity(0.30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: ColorHelper.color[9],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Icon(IconHelper.icons[6],color: ColorHelper.color[0],size: 17,),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,)
              ],
            ),
          ),
          Expanded(
            child: _foundUsers.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Image.asset(assets.nothing_found),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: _foundUsers.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: context.isPhone ? 2 : 6,
                            mainAxisExtent: 266),
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => product_info(
                                            title: _foundUsers[index]["title"],
                                            price:
                                                "₹ ${_foundUsers[index]["price"]}",
                                            image: _foundUsers[index]["image"],
                                            stock: _foundUsers[index]["stock"],
                                            des: _foundUsers[index]
                                                ["description"],
                                            lat: _foundUsers[index]["lat"],
                                            long: _foundUsers[index]["long"],
                                          )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ColorHelper.color[0],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorHelper.color[1],
                                            blurRadius: 5,
                                            offset: Offset(3, 4))
                                      ]),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          _foundUsers[index]["stock"] ==
                                                  "In Stock"
                                              ? Text("")
                                              : Text(
                                                  "* out of stock",
                                                  style: TextStyle(
                                                      color:
                                                          ColorHelper.color[4]),
                                                ),
                                          Expanded(child: like_btn(title: _foundUsers[index]["title"], des: _foundUsers[index]["des"], price: _foundUsers[index]["price"], image: _foundUsers[index]["image"], stock: _foundUsers[index]["stock"], lat: _foundUsers[index]["lat"], long: _foundUsers[index]["long"] )),
                                        ],
                                      ),
                                      Container(
                                          height: 134,
                                          width: 134,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(80)),
                                              color: _foundUsers[index]
                                                          ["stock"] ==
                                                      "In Stock"
                                                  ? ColorHelper.color[3]
                                                      .withOpacity(0.40)
                                                  : ColorHelper.color[4]
                                                      .withOpacity(0.40)),
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(80)),
                                                  color: _foundUsers[index]
                                                              ["stock"] ==
                                                          "In Stock"
                                                      ? ColorHelper.color[3]
                                                          .withOpacity(0.85)
                                                      : ColorHelper.color[4]
                                                          .withOpacity(0.85)),
                                              child: Center(
                                                child: Image.memory(
                                                  _foundUsers[index]["image"],
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Text(
                                          _foundUsers[index]["title"],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: ColorHelper.r_g_b[3]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Text(
                                          "₹ ${_foundUsers[index]["price"]}",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: ColorHelper.color[2]),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  ),
          )
        ],
      ),
    );
  }
}
