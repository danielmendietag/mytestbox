import 'package:get/get.dart';
import 'package:mytestbox/views/home/home_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
