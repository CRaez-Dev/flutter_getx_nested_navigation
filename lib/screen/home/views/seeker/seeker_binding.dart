import 'package:flutter_getx_nested_navigation/screen/home/views/seeker/seeker_controller.dart';
import 'package:get/get.dart';

class SeekerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeekerController>(() => SeekerController());
  }

  
}
