import 'package:get/get.dart';

import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';

import 'package:flutter_getx_nested_navigation/screen/home/home_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/home/home_screen.dart';

import 'package:flutter_getx_nested_navigation/screen/main/main_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/main/main_screen.dart';

import 'package:flutter_getx_nested_navigation/screen/profile/profile_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/profile_screen.dart';

import 'package:flutter_getx_nested_navigation/screen/splash/splash_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/splash/splash_screen.dart';

class AppPages {
  
  static List<GetPage> pages = <GetPage>[
    GetPage(
        name: AppRoutes.splashPage,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: '${AppRoutes.mainPage}/:route',
      page: () => const MainScreen(),
      binding: MainBinding(),
      children: [
        GetPage(
          name: AppRoutes.profilePage,
          page: () => const ProfileScreen(),
          binding: ProfileBinding(),
        ),
        GetPage(
          name: AppRoutes.homePage,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
      ],
    ),
  ];
}
