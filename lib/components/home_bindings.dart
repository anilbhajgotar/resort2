// import 'package:flutter_carousel_example/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
