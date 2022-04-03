// import 'package:flutter_carousel_example/models/carousel.dart';
// import 'package:flutter_carousel_example/services/remote_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resorts/models/carousel_home_main_image.dart';
import 'package:resorts/services/remote_service_main_image.dart';
// import 'package:resorts/controllers/guest_select.dart';
// import 'package:resorts/models/carousel_event.dart';
// import 'package:resorts/services/remote_service_event.dart';

import '../models/carousel.dart';
import '../services/remote_service.dart';

class HomeControllerMainImage extends GetxController {
  var box = GetStorage();
  var isLoading = false;
  List<CarouselMainImage> carouselDataMianImageList = [];
  // List<CarouselEvent> carouselDataEvent = [];

  @override
  void onInit() {
    fetchCarousel();
    if (box.read('carouselData') != null) {
      carouselDataMianImageList.assignAll(box.read('carouselData'));
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
      // Future.delayed(Duration(seconds: 2));
      // List<CarouselDemo> _data = await RemoteService.fetchCarouselData();
      List<CarouselMainImage> data =
          await RemoteServiceMainImage.fetchCarouselDataMianImage();
      // List<CarouselEvent> _data = await RemoteService.fetchCarouselData();

      // List<CatalogModel> _data = await GetData.loadData();
      // data = await RemoteService.fetchCarouselData();
      // catalog = await GetData.loadData();

      // print(data);
      print("anil");
      if (data != null) {
        // print("anil");
        carouselDataMianImageList.assignAll(data);
        // catalog.assignAll(_data);

        box.write('carouselData', data);
        // box.write('catalogdata', _data);
      } else {
        // List<CarouselMainImage> data = await RemoteService.fetchCarouselData();
        print("else is called");
      }
    } finally {
      isLoading = false;
      update();
      print('data fetch done');
    }
  }

  // void fetchCarouselEvent() async {
  //   try {
  //     isLoading = true;
  //     update();

  //     List<CarouselEvent> _data =
  //         await RemoteServiceEvent.fetchCarouselDataEvent();

  //     print(_data);
  //     print("anil");
  //     print("Event Carousel");

  //     if (_data != null) {
  //       // print("anil");
  //       carouselDataEvent.assignAll(_data);
  //       // catalog.assignAll(_data);

  //       box.write('carouselData', _data);
  //       // box.write('catalogdata', _data);
  //     } else {
  //       // List<Carousel> data = await RemoteService.fetchCarouselData();
  //       // print("else is called");
  //     }
  //   } finally {
  //     isLoading = false;
  //     update();
  //     print('data fetch done');
  //   }
  // }
}
