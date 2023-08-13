import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapp/const/app_string.dart';
import 'package:tourapp/ui/route/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // splash screen jamp to onboarding screen
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100.w),
            SizedBox(height: 10.h),
            Text(AppsStrings.appName,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
