import 'dart:convert';

List<Carousel> carouselFromJson(String str) =>
    List<Carousel>.from(json.decode(str).map((x) => Carousel.fromJson(x)));

String carouselToJson(List<Carousel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CatelogData {
//   static List<Carousel>? items;
//   Carousel getById(String id) =>
//       items!.firstWhere((element) => element.id == id, orElse: null);
//   Carousel getByPosition(int pos) => items![pos];
// }

class Carousel {
  Carousel({
    required this.id,
    required this.image,
    required this.description,
    required this.guest,
    required this.bedroom,
    required this.bed,
    required this.bath,
    required this.price,
    required this.title,
  });

  final int id;
  // final String id;

  final String image;
  final String title;
  final String description;
  final String guest;
  final int bedroom;
  final String bed;
  final int bath;
  final int price;

  factory Carousel.fromJson(Map<String, dynamic> json) {
    print(json["image"]);
    print(json["id"]);
    return Carousel(
      id: json["id"] == null ? null : json["id"],
      // image: json["image"] == null ? null : json["image"],
      image: json["image"] == null ? null : json["image"],
      description: json["description"] == null ? null : json["description"],
      guest: json["guest"] == null ? null : json["guest"],
      bedroom: json["bedroom"] == null ? null : json["bedroom"],
      bed: json["bed"] == null ? null : json["bed"],
      price: json["price"] == null ? null : json["price"],
      bath: json["bath"] == null ? null : json["bath"],

      // image:
      //     "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_900,h_700/https://herculesfitness.co.in/wp-content/uploads/sites/11/2020/12/tm22e.png",
      title: json["title"] == null ? null : json["title"],
    );
  }
  // Carousel(
  //       id: json["id"] == null ? null : json["id"],
  //       image: json["image"] == null ? null : json["image"],
  //       title: json["title"] == null ? null : json["title"],
  //     );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image,
        "description": image == null ? null : description,
        "guest": image == null ? null : guest,
        "bedroom": image == null ? null : bedroom,
        "bed": image == null ? null : bed,
        "bath": image == null ? null : bath,
        "price": image == null ? null : price,

        // "image": jsonDecode(image) == null ? null : jsonDecode(image),
      };
}
