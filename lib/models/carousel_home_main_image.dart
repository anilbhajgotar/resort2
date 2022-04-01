import 'dart:convert';

List<CarouselMainImage> carouselMainImageFromJson(String str) =>
    List<CarouselMainImage>.from(
        json.decode(str).map((x) => CarouselMainImage.fromJson(x)));

String carouselToJson(List<CarouselMainImage> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarouselMainImage {
  CarouselMainImage({
    required this.id,
    required this.image,
    required this.title,
  });

  // final int id;
  final String id;

  final String image;
  final String title;
  factory CarouselMainImage.fromJson(Map<String, dynamic> json) {
    // print(json["image"]);
    // print(json["id"]);
    return CarouselMainImage(
      id: json["_id"] == null ? null : json["_id"],
      // image: json["image"] == null ? null : json["image"],
      image: json["image"]["url"] == null ? null : json["image"]["url"],

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
