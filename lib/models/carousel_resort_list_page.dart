import 'dart:convert';

List<CarouselResortListPage> carouselResortListPageFromJson(String str) =>
    List<CarouselResortListPage>.from(
        json.decode(str).map((x) => CarouselResortListPage.fromJson(x)));

String carouselToJson(List<CarouselResortListPage> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarouselResortListPage {
  CarouselResortListPage({
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
  factory CarouselResortListPage.fromJson(Map<String, dynamic> json) {
    print(json["image"]);
    print(json["id"]);
    return CarouselResortListPage(
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
        // "image": jsonDecode(image) == null ? null : jsonDecode(image),
      };
}
