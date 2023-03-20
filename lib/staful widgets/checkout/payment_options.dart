import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';
import 'package:urban_style/staful%20widgets/checkout_status_bar.dart';
import 'package:urban_style/widgets/gradient_button.dart';
import 'package:urban_style/widgets/payment_success.dart';

class payment_options extends StatefulWidget {
  const payment_options({Key? key}) : super(key: key);

  @override
  State<payment_options> createState() => _payment_optionsState();
}

class _payment_optionsState extends State<payment_options> {
  @override
  bool is_cash_on_delivery = false;
  bool is_phone_pay = false;
  bool is_google_pay = false;
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          color: ColorHelper.color[0],
          child: Row(
            children: [
              SizedBox(width: 18,),
              // 27
              InkWell(
                onTap: (){
                  if(check_status_Bar.part_1 == true){
                    setState(() {
                      is_cash_on_delivery = true;
                      is_google_pay = false;
                      is_phone_pay = false;
                    });
                  }
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: is_cash_on_delivery == true ?Icon(IconHelper.icons[27],color: ColorHelper.color[4],) :Icon(IconHelper.icons[26],color: ColorHelper.color[1],),
                ),
              ),
              SizedBox(width: 10,),
              Text("Cash on delivery",style: TextStyle(color: is_cash_on_delivery ?ColorHelper.color[2] :ColorHelper.color[1],fontSize: 17 ),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Icon(IconHelper.icons[25],size: 28,color: is_cash_on_delivery ? ColorHelper.color[4] : ColorHelper.color[1]),
              )),
              SizedBox(width: 18,)
            ],
          ),
        ),
        SizedBox(height: 10,),

        // Google Pay

        Container(
          height: 50,
          width: double.infinity,
          color: ColorHelper.color[0],
          child: Row(
            children: [
              SizedBox(width: 18,),
              // 27
              InkWell(
                onTap: (){

                  if(check_status_Bar.part_1 == true){
                    setState(() {
                      is_cash_on_delivery = false;
                      is_google_pay = true;
                      is_phone_pay = false;
                    });
                  }

                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: is_google_pay == true ?Icon(IconHelper.icons[27],color: ColorHelper.color[4],) :Icon(IconHelper.icons[26],color: ColorHelper.color[1],),
                ),
              ),
              SizedBox(width: 10,),
              Text("Pay using Google Pay",style: TextStyle(color: is_google_pay ?ColorHelper.color[2] :ColorHelper.color[1],fontSize: 17 ),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Icon(IconHelper.icons[4],size: 28,color: is_google_pay ? ColorHelper.color[4] : ColorHelper.color[1]),
              )),
              SizedBox(width: 18,)
            ],
          ),
        ),
        SizedBox(height: 10,),

        // Phone Pay

        Container(
          height: 50,
          width: double.infinity,
          color: ColorHelper.color[0],
          child: Row(
            children: [
              SizedBox(width: 18,),
              // 27
              InkWell(
                onTap: (){
                  if(check_status_Bar.part_1 == true){
                    setState(() {
                      is_cash_on_delivery = false;
                      is_google_pay = false;
                      is_phone_pay = true;
                    });
                  }
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: is_phone_pay == true ?Icon(IconHelper.icons[27],color: ColorHelper.color[4],) :Icon(IconHelper.icons[26],color: ColorHelper.color[1],),
                ),
              ),
              SizedBox(width: 10,),
              Text("Pay using Phone Pay",style: TextStyle(color: is_phone_pay ?ColorHelper.color[2] :ColorHelper.color[1],fontSize: 17 ),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Icon(IconHelper.icons[24],size: 28,color: is_phone_pay ? ColorHelper.color[4] : ColorHelper.color[1]),
              )),
              SizedBox(width: 18,)
            ],
          ),
        ),
        SizedBox(height: 50,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 18,right: 18),
            child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => payment_success()));
                },
                child: gradient_button("Pay", context))
          ),
        )
      ],
    );
  }
}
