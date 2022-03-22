// import 'package:flutter_carousel_example/views/home/home_binding.dart';
// import 'package:flutter_carousel_example/views/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:resorts/components/home_screen.dart';
import 'package:resorts/pages/main_home_page.dart';

import '../components/home_bindings.dart';
import 'app_routes.dart';

// import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => MainHomePage(),
      binding: HomeBinding(),
    ),
    
  ];
}
