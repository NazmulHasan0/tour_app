import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapp/const/app_color.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/styles/style.dart';
import 'package:tourapp/ui/widgets/vialetbutton.dart';

class Singin extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login/To Your Account",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppsColor.violetColor),
                ),
                SizedBox(height: 12.h),
                SizedBox(height: 80.h),
                TextFormField(
                  controller: _emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: AppStyle().textfielddecoration("E-mail Address"),
                ),
                TextFormField(
                  controller: _passcontroller,
                  keyboardType: TextInputType.text,
                  decoration: AppStyle().textfielddecoration("Enter-Password"),
                ),
                SizedBox(height: 20.h),
                VialetButton("Login", () {}),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "---OR---",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/google.png")),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/facebook.png")),
                  ],
                ),
                RichText(
                  text: TextSpan(
                      text: "Don't have registeredyet?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppsColor.violetColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(singUp),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
