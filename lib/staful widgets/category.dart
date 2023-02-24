
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/controllers/assets/assets.dart';
import 'package:urban_style/pages/home/home.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  bool caps = true;
  bool glasses = false;
  bool rings = false;
  bool chains = false;
  bool t_shirts = false;
  bool makeup = false;
  bool pants = false;
  bool shoes = false;
  bool sleepers = false;
  bool electronics = false;
  bool other = false;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Container(
          height: 90,
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    caps = true;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 0;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: caps
                    ? ColorHelper.color[8]
                    :ColorHelper.color[0],
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: ColorHelper.color[1],
                        offset: Offset(2,3)
                      )
                    ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.caps}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Caps",style: TextStyle(fontWeight: FontWeight.bold,color: caps ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = true;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 1;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: glasses
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.glasses}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Glasses",style: TextStyle(fontWeight: FontWeight.bold,color: glasses ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = true;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 2;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: rings
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.rings}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Rings",style: TextStyle(fontWeight: FontWeight.bold,color: rings ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = true;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 3;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: chains
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.chains}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Chains",style: TextStyle(fontWeight: FontWeight.bold,color: chains ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = true;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 4;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: t_shirts
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.t_shirt}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("T-Shirts",style: TextStyle(fontWeight: FontWeight.bold,color: t_shirts ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = true;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 5;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: makeup
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.makeup}",height: 40,width: 40,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Makeup",style: TextStyle(fontWeight: FontWeight.bold,color: makeup ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = true;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 6;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: pants
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.pants}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Pants",style: TextStyle(fontWeight: FontWeight.bold,color: pants ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = true;
                    sleepers = false;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 7;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: shoes
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.shoes}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Shoes",style: TextStyle(fontWeight: FontWeight.bold,color: shoes ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = true;
                    electronics = false;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 8;
                  });
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: sleepers
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.sleepers}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Sleepers",style: TextStyle(fontWeight: FontWeight.bold,color: sleepers ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = true;
                    other = false;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 9;
                  });
                },
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: electronics
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("${assets.electronics}",height: 50,width: 50,fit: BoxFit.fitWidth,),
                        SizedBox(width: 10,),
                        Text("Electronics",style: TextStyle(fontWeight: FontWeight.bold,color: electronics ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    caps = false;
                    glasses = false;
                    rings = false;
                    chains = false;
                    t_shirts = false;
                    makeup = false;
                    pants = false;
                    shoes = false;
                    sleepers = false;
                    electronics = false;
                    other = true;
                  });
                  home_page_state.setState(() {
                    home_page_state.index_ = 10;
                  });
                },
                child: Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: other
                          ? ColorHelper.color[8]
                          :ColorHelper.color[0],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: ColorHelper.color[1],
                            offset: Offset(2,3)
                        )
                      ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        SizedBox(width: 10,),
                        Text("Other",style: TextStyle(fontWeight: FontWeight.bold,color: other ?ColorHelper.color[0] : ColorHelper.color[2]),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
