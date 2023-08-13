import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourapp/const/app_color.dart';
import 'package:tourapp/const/app_string.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926), // figma screen size
      builder: (context, Widget) {
        return GetMaterialApp(
          // for GetX
          title: AppsStrings.appName, // const string
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              // use google font
              Theme.of(context).textTheme.apply(),
            ),
            scaffoldBackgroundColor: AppsColor.scaffoldColor, // const color
          ),
          initialRoute: splash,
          getPages: getpages, // route array list
          home: SplashScreen(),
        );
      },
    );
  }
}
