//

// lib/repository/Screens/login/loginScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_blink/repository/Screens/BottomNav/bottomnavscreen.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView: on a small phone, or with big fonts, the
      // screen scrolls instead of showing the yellow-black overflow stripes.
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Full-width banner; height follows the image's aspect ratio
            Uihelper.CustomImage(img: "B_login.jpeg", width: double.infinity),
            SizedBox(height: 10.w),
            Uihelper.CustomImage(
                img: "BlinkItlogo.png", height: 100, width: 100),
            SizedBox(height: 20.w),
            Uihelper.customFont(
                text: "Indias Last Minute App",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "bold"),
            SizedBox(height: 10.w),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: const _LoginCard(),
            ),
            SizedBox(height: 20.w),
          ],
        ),
      ),
    );
  }
}

class _LoginCard extends StatelessWidget {
  const _LoginCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      // The card now fills the screen width minus a margin, instead of a
      // fixed 300px, so it fits every phone.
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min, // height = content, not fixed 200
          children: [
            Uihelper.customFont(
              text: "Nikita",
              // Fixed: was Color(0xff0000000) (9 digits) -> slightly see-through
              color: const Color(0xff000000),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(height: 5.w),
            Uihelper.customFont(
                text: "8080xxxxxx",
                // Fixed: was Color(0xff9c9c9c9c) (9 digits)
                color: const Color(0xff9c9c9c),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "bold"),
            SizedBox(height: 12.w),
            SizedBox(
              width: double.infinity, // was fixed 295
              height: 48.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff23744),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Uihelper.customFont(
                    text: "Log in Zomato",
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "bold"),
              ),
            ),
            SizedBox(height: 10.w),
            Uihelper.customFont(
                text: "Access Your Saved Address From Zomato Automatically",
                color: const Color(0xff9c9c9c),
                fontWeight: FontWeight.normal,
                fontSize: 10,
                textAlign: TextAlign.center),
            SizedBox(height: 20.w),
            Uihelper.customFont(
                text: "Or Login With mobile Number",
                color: const Color(0xff269237),
                fontWeight: FontWeight.normal,
                fontSize: 14,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
