import 'package:flutter_getx_nested_navigation/config/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void onGoToProfile() => Get.offAllNamed('${AppRoutes.mainPage}${AppRoutes.profileRootPage}');
  void onGoToHome() => Get.offAllNamed('${AppRoutes.mainPage}${AppRoutes.homeRootPage}');
}
