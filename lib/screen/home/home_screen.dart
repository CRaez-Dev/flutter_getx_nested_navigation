import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/seeker/seeker_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/seeker/seeker_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(AppRoutes.homePageId),
      initialRoute: AppRoutes.homeRootPage,
      onGenerateRoute: (settings) {
        return switch (settings.name) {
          (AppRoutes.homeRootPage) => GetPageRoute(
              routeName: AppRoutes.homeRootPage,
              page: () => const HomeRootScreen(),
              binding: HomeRootBinding()),
          (AppRoutes.seekerPage) => GetPageRoute(
              routeName: AppRoutes.seekerPage,
              page: () => const SeekerScreen(),
              binding: SeekerBinding()),
          _ => GetPageRoute(
              routeName: AppRoutes.homeRootPage,
              page: () => const HomeRootScreen(),
              binding: HomeRootBinding()),
        };
      },
    );
  }
}
