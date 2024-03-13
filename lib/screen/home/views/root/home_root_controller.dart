import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeRootController extends GetxController {
  void onGoToSeeker() =>
      Get.toNamed(AppRoutes.seekerPage, id: AppRoutes.homePageId);
}
