import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/seeker/seeker_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/seeker/seeker_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/settings/settings_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/settings/settings_screen.dart';
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
  AppPages._();

  static List<GetPage> pages = <GetPage>[
    GetPage(
        name: AppRoutes.splashPage,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.mainPage,
        page: () => const MainScreen(),
        binding: MainBinding()),

    GetPage(
        name: AppRoutes.profilePage,
        page: () => const ProfileScreen(),
        binding: ProfileBinding()),
    GetPage(
        name: AppRoutes.profileRootPage,
        page: () => const ProfileRootScreen(),
        binding: ProfileRootBinding()),
    GetPage(
        name: AppRoutes.settingsPage,
        page: () => const SettingsScreen(),
        binding: SettingsBinding()),

    GetPage(
        name: AppRoutes.homePage,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.homeRootPage,
        page: () => const HomeRootScreen(),
        binding: HomeRootBinding()),
    GetPage(
        name: AppRoutes.seekerPage,
        page: () => const SeekerScreen(),
        binding: SeekerBinding()),
  ];
}
