import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tourapp/const/app_color.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/styles/style.dart';
import 'package:tourapp/ui/views/auth/sing_up.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> _lottieFiles = [
    "assets/files/welcome.json",
    "assets/files/Categories.json",
    "assets/files/Support.json",
  ];

  List<String> _titles = [
    "Welcome",
    "Categories",
    "Support",
  ];

  List<String> _description = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ];

  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                  flex: 2,
                  child: Lottie.asset(_lottieFiles[_currentIndex.toInt()])),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: AppsColor.scaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(-4, -4),
                        blurRadius: 5,
                        spreadRadius: 1.0,
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          "${_titles[_currentIndex.toInt()]}",
                          style: AppStyle().myTextStyle,
                        ),
                      ),
                      Obx(
                        () => Text("${_description[_currentIndex.toInt()]}"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => DotsIndicator(
                              dotsCount: _lottieFiles.length,
                              position: _currentIndex.toInt(),
                              decorator: DotsDecorator(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (_currentIndex == _titles.length - 1) {
                                // _titles.length বলতে animation & description এর length
                                Get.toNamed(singUp);
                                // print("finished");
                              } else {
                                _currentIndex + 1;
                              }
                            },
                            child: Container(
                              height: 37.w,
                              width: 37.w,
                              decoration: BoxDecoration(
                                  color: AppsColor.scaffoldColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(4, 4),
                                      blurRadius: 10,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(-4, -4),
                                      blurRadius: 5,
                                      spreadRadius: 1.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
