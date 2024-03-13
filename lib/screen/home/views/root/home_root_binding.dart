import 'package:flutter_getx_nested_navigation/screen/home/views/root/home_root_controller.dart';
import 'package:get/get.dart';

class HomeRootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRootController>(() => HomeRootController());
  }

  
}
