import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapp/ui/views/bottomNavController/bottomNavController.dart';
import 'package:tourapp/ui/views/drawer_screen.dart';

class MainHomeScreen extends StatelessWidget {
  //
  Future _exitDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sure to close this App ?"),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("No"),
              ),
              SizedBox(
                width: 20.w,
              ),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                  // এর কাজ হলো
                  // stack থেকে screen গুলোকে cleare করে দেবে
                  // যার ফলে App থেকে একেবারে বের হওয়া যাবে
                },
                child: Text("Yes"),
              ),
            ],
          ),
        );
      },
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _exitDialog(
            context); // _exitDialog কে call দিলাম & argument হিসাবে context pass করলাম
        return Future.value(false); // bool data return করা হচ্ছে
      },
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            BottomNavController(),
          ],
        ),
      ),
    );
  }
}

/*
  Scaffold কে WillPopScope দিয়ে wrap করলে
  phone এর back buttom এ click করলে
  একটা dialog open হবে
  তখন YES NO অনুযায়ী action ঘটাবে
*/