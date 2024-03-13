import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/screen/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        body: Container(
          color: Colors.green,
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('SplashScreen'),
                  const SizedBox(
                    height: 12,
                  ),
                  FilledButton(
                    onPressed: controller.onGoToProfile,
                    child: const Text('Go to Profile'),
                  ),
                  FilledButton(
                    onPressed: controller.onGoToHome,
                    child: const Text('Go to Home'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
