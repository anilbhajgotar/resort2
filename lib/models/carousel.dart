import 'dart:convert';

List<Carousel> carouselFromJson(String str) =>
    List<Carousel>.from(json.decode(str).map((x) => Carousel.fromJson(x)));

String carouselToJson(List<Carousel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatelogData {
  static List<Carousel>? items;
  Carousel getById(String id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);
  Carousel getByPosition(int pos) => items![pos];
}

class Carousel {
  Carousel({
    required this.id,
    required this.image,
    required this.title,
  });

  final int id;
  // final String id;

  final String image;
  final String title;
  factory Carousel.fromJson(Map<String, dynamic> json) {
    print(json["image"]);
    print(json["id"]);
    return Carousel(
      id: json["id"] == null ? null : json["id"],
      // image: json["image"] == null ? null : json["image"],
      image: json["image"] == null ? null : json["image"],

      // image:
      //     "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_900,h_700/https://herculesfitness.co.in/wp-content/uploads/sites/11/2020/12/tm22e.png",
      title: json["createdAt"] == null ? null : json["createdAt"],
    );
  }
  // Carousel(
  //       id: json["id"] == null ? null : json["id"],
  //       image: json["image"] == null ? null : json["image"],
  //       title: json["title"] == null ? null : json["title"],
  //     );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "image": image == null ? null : image,
        // "image": jsonDecode(image) == null ? null : jsonDecode(image),
      };
}
