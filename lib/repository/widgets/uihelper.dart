// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Uihelper {
//   // ignore: non_constant_identifier_names
//   static CustomImage({required String img, double? height, double? width}) {
//     return Image.asset(
//       "assets/images/$img",
//       width: width,
//       height: height,
//     );
//   }

//   static Widget customFont({
//     required String text,
//     required Color color,
//     required FontWeight fontWeight,
//     required double fontSize,
//     String? fontFamily,
//   }) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontSize: fontSize,
//         fontFamily: fontFamily ?? "Regular",
//         fontWeight: fontWeight,
//         color: color,
//       ),
//     );
//   }

//   static customTextFeild({required TextEditingController controller}) {
//     return Container(
//       height: 40,
//       width: 360,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//           border: Border.all(color: Color(0xffc5c5c5))),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//             hintText: "Search 'ice-cream'",
//             prefix: Image.asset(
//               "assets/images/search.png",
//               height: 20,
//               width: 20,
//             ),
//             suffix: Image.asset(
//               "assets/images/microphone.png",
//               height: 20,
//               width: 20,
//             ),
//             border: InputBorder.none),
//       ),
//     );
//   }
// }
// lib/repository/widgets/uihelper.dart
//
// IMPORTANT: Uihelper now scales sizes itself.
// So everywhere you call these helpers, pass the sizes EXACTLY as in Figma
// (fontSize: 14, width: 100). Do NOT add .sp / .w to them again,
// or the size will be scaled twice.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Uihelper {
  // Scales a size with the screen width. Leaves null and infinity untouched.
  static double? _scale(double? v) => (v == null || v.isInfinite) ? v : v.w;

  // ignore: non_constant_identifier_names
  static Widget CustomImage({
    required String img,
    double? height,
    double? width, // use double.infinity for full width
    BoxFit? fit,
  }) {
    return Image.asset(
      "assets/images/$img",
      width: _scale(width),
      height: _scale(height),
      fit: fit,
    );
  }

  static Widget customFont({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
    String? fontFamily,
    // optional extras so long text can wrap / be cut with "..."
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontFamily: fontFamily ?? "Regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  // (name kept as-is so your other screens don't break)
  // No fixed width/height anymore: the parent decides the width,
  // and the height comes from the text + padding.
  static Widget customTextFeild({required TextEditingController controller}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        border: Border.all(color: const Color(0xffc5c5c5)),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          hintStyle: TextStyle(fontSize: 14.sp),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12.w),
          // prefixIcon / suffixIcon are always visible.
          // (the old `prefix` / `suffix` only show while typing)
          prefixIcon: Padding(
            padding: EdgeInsets.all(10.w),
            child: Image.asset("assets/images/search.png",
                width: 20.w, height: 20.w),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(10.w),
            child: Image.asset("assets/images/microphone.png",
                width: 20.w, height: 20.w),
          ),
          prefixIconConstraints:
              BoxConstraints(minWidth: 40.w, minHeight: 40.w),
          suffixIconConstraints:
              BoxConstraints(minWidth: 40.w, minHeight: 40.w),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customButton(VoidCallback callback) {
    return Container(
      height: 18.w,
      width: 20.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Center(
        child: Text(
          "ADD",
          style: TextStyle(fontSize: 8.sp, color: Color(0xff27af24)),
        ),
      ),
    );
  }
}
