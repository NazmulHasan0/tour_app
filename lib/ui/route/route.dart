import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourapp/ui/views/auth/sing_in.dart';
import 'package:tourapp/ui/views/auth/sing_up.dart';
import 'package:tourapp/ui/views/bottomNavController/details_screen.dart';
import 'package:tourapp/ui/views/bottomNavController/pages/nav_add_last_step.dart';
import 'package:tourapp/ui/views/bottomNavController/searchscreen.dart';
import 'package:tourapp/ui/views/bottomNavController/see_all.dart';
import 'package:tourapp/ui/views/drawer_pages/faq.dart';
import 'package:tourapp/ui/views/drawer_pages/how_to_use.dart';
import 'package:tourapp/ui/views/drawer_pages/privacy.dart';
import 'package:tourapp/ui/views/drawer_pages/profile.dart';
import 'package:tourapp/ui/views/drawer_pages/setting.dart';
import 'package:tourapp/ui/views/drawer_pages/support.dart';
import 'package:tourapp/ui/views/main_home_screen.dart';
import 'package:tourapp/ui/views/onboarding_screen.dart';
import 'package:tourapp/ui/views/privacy_policy.dart';
import 'package:tourapp/ui/views/splash_screen.dart';
import 'package:tourapp/ui/views/user_form.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String singUp = '/singup-screen';
const String singIn = '/singin-screen';
const String userForm = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String mainHomeScreen = '/main-home-screen';
const String faqScreen = '/faq-screen';
const String howToUseScreen = '/how-to-use-screen';
const String privacyScreen = '/privacy-screen';
const String settingScreen = '/setting-screen';
const String supportScreen = '/support-screen';
const String searchScreen = '/search-screen';
const String seeAllScreen = '/see-all-screen';
const String detailsScreen = '/details-screen';
const String navAddLastStep = '/Nav-Add-Last-Step-screen';
const String userProfile = '/user-profile-screen';
const String setting = '/setting-screen';

// Control our page route flow
List<GetPage> getpages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(name: singUp, page: () => Singup()),
  GetPage(name: singIn, page: () => Singin()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
  GetPage(name: mainHomeScreen, page: () => MainHomeScreen()),
  GetPage(name: faqScreen, page: () => FAQ()),
  GetPage(name: howToUseScreen, page: () => HowToUse()),
  GetPage(name: privacyScreen, page: () => Privacy()),
  GetPage(name: settingScreen, page: () => Setting()),
  GetPage(name: supportScreen, page: () => Support()),
  GetPage(name: searchScreen, page: () => SearchScreen()),
  GetPage(name: seeAllScreen, page: () => SeeAllScreen()),
  GetPage(name: detailsScreen, page: () => DetailsScreen()),
  GetPage(name: navAddLastStep, page: () => NavAddLastStep()),
  GetPage(name: userProfile, page: () => UserProfile()),
  GetPage(name: setting, page: () => Setting()),
];
