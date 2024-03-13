import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_controller.dart';
import 'package:get/get.dart';

class ProfileRootScreen extends StatelessWidget {
  const ProfileRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileRootController>(
      builder: (_) => Scaffold(
        body: Container(
          color: Colors.purpleAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Profile'),
                FilledButton(
                    onPressed: _.onGoToSettings,
                    child: const Text('To Settings'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
