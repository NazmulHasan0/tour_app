import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourapp/ui/views/auth/sing_in.dart';
import 'package:tourapp/ui/views/auth/sing_up.dart';
import 'package:tourapp/ui/views/onboarding_screen.dart';
import 'package:tourapp/ui/views/splash_screen.dart';
import 'package:tourapp/ui/views/user_form.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String singUp = '/singup-screen';
const String singIn = '/singin-screen';
const String userForm = '/user-form-screen';

// Control our page route flow
List<GetPage> getpages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(name: singUp, page: () => Singup()),
  GetPage(name: singIn, page: () => Singin()),
  GetPage(name: userForm, page: () => UserForm()),
];
