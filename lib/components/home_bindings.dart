// import 'package:flutter_carousel_example/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:resorts/controllers/home_controllers%20event.dart';
import 'package:resorts/controllers/home_controllers_main_image.dart';

import '../controllers/home_controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeControllerEvent>(() => HomeControllerEvent());
    Get.lazyPut<HomeControllerMainImage>(() => HomeControllerMainImage());
    // Get.lazyPut<HomeControllerResortPage>(() => HomeControllerResortPage());
  }
}
