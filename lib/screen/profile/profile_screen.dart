import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_screen.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/settings/settings_binding.dart';
import 'package:flutter_getx_nested_navigation/screen/profile/views/settings/settings_screen.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(AppRoutes.profilePageId),
      initialRoute: AppRoutes.profileRootPage,
      onGenerateRoute: (settings) {
        return switch (settings.name) {
          (AppRoutes.profileRootPage) => GetPageRoute(
              routeName: AppRoutes.profileRootPage,
              page: () => const ProfileRootScreen(),
              binding: ProfileRootBinding(),
            ),
          (AppRoutes.settingsPage) => GetPageRoute(
              routeName: AppRoutes.settingsPage,
              page: () => const SettingsScreen(),
              binding: SettingsBinding(),
            ),
          _ => GetPageRoute(
              routeName: AppRoutes.profileRootPage,
              page: () => const ProfileRootScreen(),
              binding: ProfileRootBinding(),
            )
        };
      },
    );
  }
}
