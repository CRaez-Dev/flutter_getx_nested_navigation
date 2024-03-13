import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:get/get.dart';

class ProfileRootController extends GetxController {
  void onGoToSettings() =>
      Get.toNamed(AppRoutes.settingsPage, id: AppRoutes.profilePageId);
}
