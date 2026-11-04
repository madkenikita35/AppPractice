// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:my_blink/repository/widgets/uihelper.dart';

// class CartScreen extends StatelessWidget {
//   TextEditingController textEditingContoller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(children: [
//       Stack(
//         children: [
//           Container(
//             height: 200,
//             width: double.infinity,
//             color: Color(0xfff7cb45),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(children: [
//                   SizedBox(width: 10),
//                   Uihelper.customFont(
//                       text: "BlinkIt in",
//                       color: Color(0xff000000),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       fontFamily: "bold"),
//                 ]),
//                 Row(children: [
//                   SizedBox(width: 10),
//                   Uihelper.customFont(
//                       text: "16 Minutes",
//                       color: Color(0xff000000),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       fontFamily: "bold"),
//                 ]),
//                 Row(children: [
//                   SizedBox(width: 10),
//                   Uihelper.customFont(
//                       text: "Home",
//                       color: Color(0xff000000),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 14),
//                   Uihelper.customFont(
//                       text: " - Raj Dave, Rahi Complex, Pune",
//                       color: Color(0xff000000),
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14),
//                 ]),
//               ],
//             ),
//           ),
//           Positioned(
//             right: 20,
//             bottom: 90,
//             child: CircleAvatar(
//               radius: 22,
//               backgroundColor: Colors.white,
//               backgroundImage: AssetImage("assets/images/user.png"),
//             ),
//           ),
//           Positioned(
//               bottom: 15,
//               left: 20,
//               child: Uihelper.customTextFeild(controller: textEditingContoller))
//         ],
//       ),
//     ]));
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const black = Color(0xff000000);

    return Scaffold(
      body: Column(
        children: [
          // Yellow header: height comes from its content (no fixed 200,
          // no Positioned(bottom: 90)), so nothing can overlap.
          Container(
            width: double.infinity,
            color: const Color(0xfff7cb45),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 12.w, 16.w, 16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Font sizes are plain Figma values:
                              // Uihelper.customFont scales them itself.
                              Uihelper.customFont(
                                  text: "BlinkIt in",
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: "bold"),
                              Uihelper.customFont(
                                  text: "16 Minutes",
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "bold"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Uihelper.customFont(
                                      text: "Home",
                                      color: black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  Expanded(
                                    child: Uihelper.customFont(
                                        text: " - Raj Dave, Rahi Complex, Pune",
                                        color: black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12.w),
                        CircleAvatar(
                          radius: 22.r,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              const AssetImage("assets/images/user.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.w),
                    // Full width on every phone (was a fixed 360 inside Uihelper)
                    SizedBox(
                      width: double.infinity,
                      child: Uihelper.customTextFeild(
                          controller: _searchController),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Rest of the cart: use ListView / SingleChildScrollView here
          SizedBox(
            height: 20.w,
          ),
          Uihelper.CustomImage(
              img: "shoppingCart.png", width: 144.w, height: 144.h),
          Uihelper.customFont(
              text: "Rendering Will be Easy",
              color: black,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              fontFamily: "bold"),
          Uihelper.customFont(
            text: "Items you order will show up here so you can buy",
            color: black,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
          Uihelper.customFont(
            text: "them easily",
            color: black,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
          SizedBox(
            height: 30.w,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Uihelper.customFont(
                  text: "Best-Sellers",
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  fontFamily: "bold"),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Stack(children: [
                Uihelper.CustomImage(
                    img: "Milk.webp", height: 120.w, width: 130.w),
                Positioned(
                  right: 20.w,
                  bottom: 2.w,
                  child: Uihelper.customButton(() {}),
                ),
              ]),
              SizedBox(
                width: 10.w,
              ),
              Stack(children: [
                Uihelper.CustomImage(
                    img: "Tomato.webp", height: 120.w, width: 130.w),
                Positioned(
                  right: 20.w,
                  bottom: 2.w,
                  child: Uihelper.customButton(() {}),
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}
