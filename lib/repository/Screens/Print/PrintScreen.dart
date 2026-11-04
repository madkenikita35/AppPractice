import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFFBF0CE),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190.w,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.w,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Uihelper.customFont(
                              text: "Blinkit in",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              fontFamily: "bold"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Uihelper.customFont(
                              text: "16 minutes",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                              fontFamily: "bold")
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Uihelper.customFont(
                              text: "HOME ",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              fontFamily: "bold"),
                          Uihelper.customFont(
                              text: "- Sujal Dave, Rahi Complex, Pune",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              fontFamily: "bold")
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 20,
                    child:
                        Uihelper.customTextFeild(controller: searchController))
              ],
            ),
            SizedBox(
              height: 30.w,
            ),
            Uihelper.customFont(
                text: "Print Store",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32.sp,
                fontFamily: "bold"),
            Uihelper.customFont(
                text: "Blinkit ensures secure prints at every stage",
                color: Color(0XFF9C9C9C),
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                fontFamily: "bold"),
            SizedBox(
              height: 40.w,
            ),
            Stack(children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Uihelper.customFont(
                            text: "Documents",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            fontFamily: "bold")
                      ],
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Uihelper.CustomImage(img: "star.png"),
                        SizedBox(
                          width: 7.w,
                        ),
                        Uihelper.customFont(
                            text: "Price starting at rs 3/page",
                            color: Color(0XFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp,
                            fontFamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Uihelper.CustomImage(img: "star.png"),
                        SizedBox(
                          width: 7.w,
                        ),
                        Uihelper.customFont(
                            text: "Paper quality: 70 GSM",
                            color: Color(0XFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Uihelper.CustomImage(img: "star.png"),
                        SizedBox(
                          width: 7.w,
                        ),
                        Uihelper.customFont(
                            text: "Single side prints",
                            color: Color(0XFF9C9C9C),
                            fontWeight: FontWeight.normal,
                            fontSize: 15.sp)
                      ],
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        SizedBox(
                          height: 40.w,
                          width: 125.w,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0XFF27AF34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                              child: Text(
                                "Upload Files",
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                child: Uihelper.CustomImage(img: "document.png"),
                right: 20,
                bottom: 40,
              )
            ])
          ],
        ));
  }
}
