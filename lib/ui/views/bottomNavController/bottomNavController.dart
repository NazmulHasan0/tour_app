import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourapp/const/app_string.dart';

class BottomNavController extends StatelessWidget {
  //
  RxInt _currentIndex = 0.obs; // যেহেতু GetX use করবো তাই RxInt & obs
  RxBool _drawer = false.obs;

  final _pages = [
    Container(color: Colors.purple),
    Container(color: Colors.green),
    Container(color: Colors.pink),
  ];

  //
  @override
  Widget build(BuildContext context) {
    // যেহেতু state change হবে & আমরা StatelessWidget use করছি তাই
    // state change করার জন্য Scaffold কে Obx দিয়ে wrap করা হয়েছে
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: 400),
        top: _drawer.value == false ? 0 : 100.h,
        bottom: _drawer.value == false ? 0 : 100.h,
        left: _drawer.value == false ? 0 : 150.w,
        right: _drawer.value == false ? 0 : -100.w,
        child: Container(
          // যেহেতু AnimatedPositioned কোন একটা widget(container হলে ভালো হয়) কে
          // move করাতে পারে তাই, Scaffold কে Container এবং
          // Container কে AnimatedPositioned দিয়ে wrap করা হয়েছে
          decoration: BoxDecoration(), // for any style
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              elevation: 0,
              centerTitle: true,
              //  leading এর icon এ click করলে _drawer true/flase হবে
              //  তখন AnimatedPositioned এর ভিতর Container টা animated হবে
              leading: _drawer.value == false
                  ? IconButton(
                      onPressed: () {
                        _drawer.value = true;
                      },
                      icon: Icon(Icons.menu, color: Colors.black),
                    )
                  : IconButton(
                      onPressed: () {
                        _drawer.value = false;
                      },
                      icon: Icon(Icons.close, color: Colors.black),
                    ),
              title: Text(AppsStrings.appName),
            ),
            //
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex.value, // this value for GetX
              onTap: (value) {
                _currentIndex.value = value;
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_outlined), label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline), label: "Favorite"),
              ],
            ),
            //
            body: _pages[_currentIndex.value],
          ),
        ),
      ),
    );
  }
}
