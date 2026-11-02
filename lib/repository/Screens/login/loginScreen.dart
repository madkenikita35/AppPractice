import 'package:flutter/material.dart';
import 'package:my_blink/domain/constants/appcolors.dart';
import 'package:my_blink/repository/Screens/BottomNav/bottomnavscreen.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.CustomImage(img: "B_login.jpeg"),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomImage(
                img: "BlinkItlogo.png", height: 100, width: 100),
            SizedBox(
              height: 20,
            ),
            Uihelper.customFont(
                text: "Indias Last Minute App",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "bold"),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfffffffff),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Uihelper.customFont(
                      text: "Nikita",
                      color: Color(0xff0000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    SizedBox(height: 5),
                    Uihelper.customFont(
                        text: "8080xxxxxx",
                        color: Color(0xff9c9c9c9c),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "bold"),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfff23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Add children here if needed
                            Uihelper.customFont(
                                text: "Log in Zomato",
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: "bold")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Uihelper.customFont(
                        text:
                            "Access Your Saved Address From Zomato Automatically",
                        color: Color(0xff9c9c9c9c),
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                    SizedBox(
                      height: 20,
                    ),
                    Uihelper.customFont(
                        text: "Or Login With mobile Number",
                        color: Color(0xff269237),
                        fontWeight: FontWeight.normal,
                        fontSize: 14)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
