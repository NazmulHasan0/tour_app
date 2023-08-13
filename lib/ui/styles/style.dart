import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  InputDecoration textfielddecoration(String hint) => InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 16.sp),
      );
  TextStyle myTextStyle =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
}
