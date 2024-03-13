import 'package:flutter_getx_nested_navigation/screen/profile/views/root/profile_root_controller.dart';
import 'package:get/get.dart';

class ProfileRootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileRootController>(() => ProfileRootController());
  }
}
