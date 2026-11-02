import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Color(0xfff7cb45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  SizedBox(width: 10),
                  Uihelper.customFont(
                      text: "BlinkIt in",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: "bold"),
                ]),
                Row(children: [
                  SizedBox(width: 10),
                  Uihelper.customFont(
                      text: "16 Minutes",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "bold"),
                ]),
                Row(children: [
                  SizedBox(width: 10),
                  Uihelper.customFont(
                      text: "Home",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  Uihelper.customFont(
                      text: " - Raj Dave, Rahi Complex, Pune",
                      color: Color(0xff000000),
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ])
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 80,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
          )
        ],
      )
    ]));
  }
}
