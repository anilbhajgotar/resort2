import 'dart:convert';

List<CarouselEvent> carouselEventsFromJson(String str) =>
    List<CarouselEvent>.from(
        json.decode(str).map((x) => CarouselEvent.fromJson(x)));

String carouselToJson(List<CarouselEvent> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarouselEvent {
  CarouselEvent({
    required this.id,
    required this.image,
    required this.title,
  });

  final int id;
  // final String id;

  final String image;
  final String title;
  factory CarouselEvent.fromJson(Map<String, dynamic> json) {
    print(json["image"]);
    print(json["id"]);
    return CarouselEvent(
      id: json["id"] == null ? null : json["id"],
      // image: json["image"] == null ? null : json["image"],
      image: json["image"] == null ? null : json["image"],

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
