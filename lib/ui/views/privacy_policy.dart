import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourapp/ui/widgets/vialetbutton.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10.h),
              VialetButton("Agree", () {}),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
