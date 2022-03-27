// import 'package:flutter_carousel_example/models/carousel.dart';
import 'package:http/http.dart' as http;

import '../models/carousel.dart';

class RemoteService {
  static var client = http.Client();

  static Future<dynamic> fetchCarouselData() async {
    try {
      var response = await client.get(
        // Uri.parse('https://my-grocery-strapi.herokuapp.com/home-carousels'),
        Uri.parse('127.0.0.1:8000/api/events'),
      );
      if (response.statusCode == 200) {
        return carouselFromJson(response.body);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
