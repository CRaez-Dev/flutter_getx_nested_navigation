import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_controller.dart';
import 'package:get/get.dart';

class HomeRootScreen extends StatelessWidget {
  const HomeRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeRootController>(
      builder: (_) => Scaffold(
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('home Root'),
                FilledButton(
                  onPressed: _.onGoToSeeker,
                  child: const Text('To Seeker'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
