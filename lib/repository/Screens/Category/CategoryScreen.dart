import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"}
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  var hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            text: "BlinkIt in",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            fontFamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
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
                            fontSize: 14.sp),
                        Uihelper.customFont(
                            text: "- Sujal Dave, Rahi Complex, Pune",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.w,
                bottom: 100.w,
                child: CircleAvatar(
                  radius: 15.w,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20.w,
                  ),
                ),
              ),
              Positioned(
                  bottom: 30.w,
                  left: 20.w,
                  child: Uihelper.customTextFeild(controller: searchController))
            ],
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
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  fontFamily: "bold")
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customFont(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customFont(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Uihelper.customFont(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  fontFamily: "bold"),
            ],
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: Uihelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      Uihelper.customFont(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Uihelper.customFont(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp)
            ],
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78.w,
                      width: 71.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0XFFD9EBEB)),
                      child: Uihelper.CustomImage(
                          img: hosuehold[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
