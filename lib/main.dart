import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourapp/const/app_color.dart';
import 'package:tourapp/const/app_string.dart';
import 'package:tourapp/ui/route/route.dart';
import 'package:tourapp/ui/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(); // for users data save
  runApp(App());
}

// যখন FireBase project এ সঠিক ভাবে initialize হবে তখন একটা CircularProgressIndicator show করবে
class App extends StatelessWidget {
  // create the initialization Future outside of build
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    name: "Shelter", //
    options: FirebaseOptions(
      apiKey:
          "AIzaSyBKVMDKyUaaxeCfZy0grOQTB1OgPP9lljc", // get google-service => current_key
      appId:
          "1:943100119661:android:e5da56470cb8e217d8cd64", // get firebase-Project settings
      messagingSenderId: "943100119661", // get firebase-Project settings
      projectId: "mytourapp-9a034", // get google-service => current_key
    ),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // for responsive
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
