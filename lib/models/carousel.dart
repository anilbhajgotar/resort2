import 'dart:convert';

List<Carousel> carouselFromJson(String str) =>
    List<Carousel>.from(json.decode(str).map((x) => Carousel.fromJson(x)));

String carouselToJson(List<Carousel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Carousel {
  Carousel({
    required this.id,
    required this.image,
  });

  final String id;
  final String image;

  factory Carousel.fromJson(Map<String, dynamic> json) => Carousel(
      id: json["id"] == null ? null : json["id"],
      // image: json["image"]["url"] == null ? null : json["image"]["url"],

      image:
          "https://res.cloudinary.com/programming-night/image/upload/v1614513604/thumbnail_gemma_stpj_HJ_Gq_Zyw_unsplash_9bf251892f.jpg" //json["image"]["url"] == null ? null : json["image"]["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image,
      };
}
