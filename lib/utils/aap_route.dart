
import 'package:demo_project/view/check_spacer.dart';
import 'package:demo_project/view/demo_1.dart';
import 'package:get/get.dart';

import '../view/demo_nav_bar_back_button.dart';
import '../view/home_screen.dart';
import '../view/login_screen.dart';
import '../view/nav_bar/navi_bar.dart';
import '../view/second_screen.dart';
import 'app_routes_constant.dart';

List<GetPage<dynamic>> getPageRoute = [
  GetPage(
    name: AppRoutes.homeScreen,
    page: () => HomeScreen(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.secondScreen,
    page: () => SecondScreen(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.loginScreen,
    page: () => LoginScreen(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.customNavigationBar,
    page: () => CustomNavigationBar(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.demoNavBarBackButton,
    page: () => DemoNavBarBackButton(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.demoOneScreen,
    page: () => DemoOneScreen(),
    transition: Transition.fade,
  ),
  GetPage(
    name: AppRoutes.checkSpacer,
    page: () => CheckSpacer(),
    transition: Transition.circularReveal,
  ),
];
