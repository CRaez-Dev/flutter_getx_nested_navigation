import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/screen/home/home_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/profile_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt indexScreens = 0.obs;
  late List<Widget> widgetScreens;

  MainController() {
    widgetScreens = <Widget>[
      const HomeScreen(),
      // this wrapper allow us to nested routes inside it
      const ProfileScreen(),
    ];
  }

  void onChangeIndex(int index) => indexScreens.value = index;
}
