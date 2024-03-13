import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void onGoToProfile() => Get.toNamed('${AppRoutes.mainPage}${AppRoutes.profileRootPage}');
  void onGoToHome() => Get.toNamed('${AppRoutes.mainPage}${AppRoutes.homeRootPage}');
}
