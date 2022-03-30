import 'dart:convert';

List<CarouselDemo> carouselDemoFromJson(String str) => List<CarouselDemo>.from(
    json.decode(str).map((x) => CarouselDemo.fromJson(x)));

String carouselDemoToJson(List<CarouselDemo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarouselDemo {
  CarouselDemo({
    required this.id,
    required this.image,
  });

  final String id;
  final String image;

  factory CarouselDemo.fromJson(Map<String, dynamic> json) => CarouselDemo(
        // id: json["_id"] == null ? null : json["_id"],
        id: json["id"] == null ? null : json["id"],

        // image: json["image"]["url"] == null ? null : json["image"]["url"],
        image: json["image"] == null ? null : json["image"],

        // image: '127.0.0.1:8000/1648404113.png',
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image,
      };
}








// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:resorts/models/carousel.dart';

// import '../controllers/guest_select.dart';

// class GetData {
//   // static String url = 'http://mzonefitness.com/test.json';
//   static String url = 'http://127.0.0.1:8000/api/eventss';

//   // static Future fetchData() async {
//   //   await Future.delayed(Duration(seconds: 1));

//   //   final response = await http.get(Uri.parse(url));
//   //   final catalogJson = response.body;

//   //   final decodeData = jsonDecode(catalogJson);

//   //   final productData = decodeData["products"];
//   //   CatalogModel.items =
//   //       List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
//   // }

//   static loadData() async {
//     await Future.delayed(Duration(seconds: 1));

//     final response = await http.get(Uri.parse(url));
//     print(response.body);
//     print("anil");
//     if (response.statusCode == 200) {
//       // final decodeData = jsonDecode(catalogJson);
//       // var productData = decodeData["products"];
//       //   //print(productData);
//       // final productData = decodeData["products"];
//       print(response.body);
//       print("anil");
//       return carouselFromJson(response.body);
//     }

//     // final catalogJson = response.body;

//     // final decodeData = jsonDecode(catalogJson);

//     // final productData = decodeData["products"];
//     // print(productData);
//     // print("anil");
//     // List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

//     // setState(() {});
//   }
// }
