// import 'package:flutter_carousel_example/models/carousel.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:resorts/models/carousel_event.dart';
import 'package:resorts/services/remote_service_event.dart';

import '../models/carousel.dart';

class RemoteServiceEvent {
  static String url = 'http://mzonefitness.com/test.json';
  static var client = http.Client();

  static Future<dynamic> fetchCarouselDataEvent() async {
    var productData;
    try {
//original code
      var response = await client.get(
        // Uri.parse('https://my-grocery-strapi.herokuapp.com/home-carousels'),
        // Uri.parse('http://mzonefitness.com/test.json'),

        Uri.parse('http://127.0.0.1:8000/api/events'),
      );
      // var response = await Dio().get('http://127.0.0.1:8000/api/events');
      // final http.Response response = await http.Client().get(
      //   Uri.parse('http://127.0.0.1:8000/api/events'),
      // );
      // final response =
      //     await http.get(Uri.parse("http://127.0.0.1:8000/api/events"));
      // print(response.body);
      // print("object");
      // final cataLogJson = response.body;
      // final decodeData = jsonDecode(cataLogJson);
      // var productData = decodeData["products"];
      // final cataLogJson = response.body;
      // final decodeData = jsonDecode(cataLogJson);

      if (response.statusCode == 200) {
        // print(response.statusCode);
        print("if called");
        // // return carouselFromJson(response.body);

        // productData = decodeData["products"];
        // print(productData);
        // print("if is called");
        // return carouselFromJson(productData);
        return carouselEventsFromJson(response.body);
      }
      // // print(response.body);

      // return carouselFromJson(decodeData);
    } catch (e) {
      print(e);
      // print("object");
      return null;
    }
  }

  // void loadData() async {
  //   await Future.delayed(Duration(seconds: 1));
  //   final catalogJson =
  //       await rootBundle.loadString("assets/files/catalog.json");

  //   final response = await http.get(Uri.parse(url));
  //   final catalogJson = response.body;

  //   final decodeData = jsonDecode(catalogJson);
  //   var productData = decodeData["products"];
  //   //print(productData);
  //   final productData = decodeData["products"];
  //   CatalogModel.items =
  //       List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

  //   setState(() {});
  // }
}
