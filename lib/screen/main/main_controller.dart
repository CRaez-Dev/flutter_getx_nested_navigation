import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:flutter_getx_nested_navigation/screen/home/home_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/profile_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt indexScreens = 0.obs;
  List<Widget> widgetScreens = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
  ];
  List<String> widgetScreensRoutes = <String>[
    AppRoutes.homeRootPage.replaceFirst('/', ''),
    AppRoutes.profileRootPage.replaceFirst('/', ''),
  ];

  @override
  void onInit() {
    print('Main Created');
    initialSetup();
    super.onInit();
  }

  void initialSetup() {
    final route = Get.parameters['route'] ?? AppRoutes.homeRootPage.replaceFirst('/', '');
    final index = getIndexByRoute(route);
    onChangeIndex(index);
  }

  int getIndexByRoute(String route) =>
      widgetScreensRoutes.indexOf(route.replaceFirst('/', ''));

  void onChangeIndex(int index) => indexScreens.value = index;
}
