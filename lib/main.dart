import 'package:flutter/material.dart';
import 'package:flutter_getx_nested_navigation/config/routes/app_pages.dart';
import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:flutter_getx_nested_navigation/config/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppPages.pages,
      theme: AppTheme.theme,
    );
  }
}
