import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/screen/main/main_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = Get.find<MainController>();
    // return GetBuilder<MainController>(builder: (_) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: _.indexScreens.value,
          children: _.widgetScreens,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: _.indexScreens.value,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          onTap: _.onChangeIndex,
        ),
      ),
    );
  }
  //);
}
//}
