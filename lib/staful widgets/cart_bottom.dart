import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/pages/accounts/sign%20up/sign%20up.dart';
import 'package:urban_style/pages/order_confirmation/order_confirmation.dart';

import '../constrants/Icons.dart';
import '../constrants/color.dart';
import '../user/user.dart';
import 'cart_item_card.dart';

late _cart_bottomState cart_bottom_state ;
class cart_bottom extends StatefulWidget {
  cart_bottom({Key? key}) : super(key: key);
  @override
  State<cart_bottom> createState() {
    cart_bottom_state = _cart_bottomState();
    return cart_bottom_state;
  }
}



class _cart_bottomState extends State<cart_bottom> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    price = user.cart_price;
  }
  update(){
    setState(() {
      price = user.cart_price;
    });
  }
  int price = 0;
  Widget build(BuildContext context) {
    print(user.cart);
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: user.cart.length,
                  itemBuilder: (context, index){
                    print("${user.cart[index.toInt()]['image']}");
                    print("${user.cart[index.toInt()]['title']}");
                    print("${user.cart[index.toInt()]['des']}");
                    print("${user.cart[index.toInt()]['price']}");
                    print("${user.cart[index.toInt()]['stock']}");
                    print("${user.cart[index.toInt()]['lat']}");
                    print("${user.cart[index.toInt()]['long']}");
                    print("${user.cart[index.toInt()]['cat']}");
                    print("${user.cart[index.toInt()]['size']}");
                    print("${user.cart[index.toInt()]['token']}");
                    return Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18,bottom: 0,top: 10),
                      child: cart_item_card(title: user.cart[index.toInt()]['title'], des: user.cart[index.toInt()]['des'], price: int.parse(user.cart[index.toInt()]['price']), image: user.cart[index.toInt()]['image'], stock: user.cart[index.toInt()]['stock'], lat: user.cart[index.toInt()]['lat'], long: user.cart[index.toInt()]['long'], cat: user.cart[index.toInt()]['cat'], selected_size: user.cart[index.toInt()]['size'], index: index.toInt(), token: user.cart[index.toInt()]['token'],),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                    color: ColorHelper.color[0],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-2,-2),
                          color: ColorHelper.color[1],
                          blurRadius: 20.0
                      )
                    ]
                ),
                child: Row(
                  children: [
                    SizedBox(width: 48,),
                    Text("₹${user.cart_price}",style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 24,letterSpacing: 1),),
                    Expanded(child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){
                          if(user.is_login == false){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => sign_up()));
                          }else{
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => order_confirmation(products: user.cart)));

                          }
                        },
                        child: Container(
                          height: 55,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorHelper.r_g_b[3],
                                    blurRadius: 20.0
                                )
                              ],
                              color: ColorHelper.r_g_b[3]
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(IconHelper.icons[20],color: ColorHelper.color[0],size: 22,),
                                SizedBox(width: 4,),
                                Text("Check Out",style: TextStyle(color: ColorHelper.color[0],fontSize: 13),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(width: 28,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
