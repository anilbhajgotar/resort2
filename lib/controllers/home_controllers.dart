// import 'package:flutter_carousel_example/models/carousel.dart';
// import 'package:flutter_carousel_example/services/remote_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:resorts/controllers/guest_select.dart';
// import 'package:resorts/models/carousel_event.dart';
// import 'package:resorts/services/remote_service_event.dart';

import '../models/carousel.dart';
import '../services/remote_service.dart';

class HomeController extends GetxController {
  var box = GetStorage();
  var isLoading = false;
  List<Carousel> carouselData = [];
  // List<CarouselEvent> carouselDataEvent = [];

  @override
  void onInit() {
    fetchCarousel();
    if (box.read('carouselData') != null) {
      carouselData.assignAll(box.read('carouselData'));
    }
    // fetchCarouselEvent();

    // if (box.read('carouselData') != null) {
    //   carouselDataEvent.assignAll(box.read('carouselData'));
    // }
    super.onInit();
  }

  void fetchCarousel() async {
    try {
      isLoading = true;
      update();

      List<Carousel> data = await RemoteService.fetchCarouselData();

      print(data);
      print("carousel Data print");
      if (data != null) {
        carouselData.assignAll(data);

        box.write('carouselData', data);
      } else {
        print("else called");
      }
    } finally {
      isLoading = false;
      update();
      print('data fetch done');
    }
  }
}
