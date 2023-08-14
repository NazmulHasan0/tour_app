import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapp/const/app_color.dart';

class VialetButton extends StatelessWidget {
  //
  RxBool _value = false.obs;

  //! Constructor এর মাধ্যমে VialetButton এর property কে call করা হয়েছে
  final onAction;
  String title;
  VialetButton(this.title, this.onAction);
  //
  @override
  Widget build(BuildContext context) {
    //! এই widget টাকে tapable করার জন্য inkwell use করছি
    //! কোন customWidget যদি tapable হয় তাহলে তাকে Obx দিয়ে wrap করতে হয়
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: AppsColor.violetColor,
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.sp,
                        color: Colors.white),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Please Wait",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp,
                          color: Colors.white),
                    ),
                    SizedBox(width: 10.w),
                    Transform.scale(
                      scale: 0.4,
                      child: CircularProgressIndicator(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
