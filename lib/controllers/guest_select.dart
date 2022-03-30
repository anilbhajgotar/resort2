import 'dart:convert';

class CatalogModel {
  static List<Item>? items;
  //Get item by ID
  Item getById(int id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);
  // items.firstWhere((element) => element.id == id);

  //Get Item By Position
  Item getByPosition(int pos) => items![pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.price,
    required this.image,
  });

  Item copyWith({
    required int id,
    required String name,
    required String desc,
    required String color,
    required num price,
    required String image,
  }) {
    return Item(
      id: id,
      name: name,
      desc: desc,
      color: color,
      price: price,
      image: image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'color': color,
      'price': price,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      color: map['color'],
      price: map['price'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, color: $color, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.color == color &&
        other.price == price &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        color.hashCode ^
        price.hashCode ^
        image.hashCode;
  }
}












// import 'dart:convert';

// // List<CatalogModel> carouselFromJson(String str) =>
// //     List<CatalogModel>.from(json.decode(str).map((x) => CatalogModel.fromJson(x)));

// // String carouselToJson(List<CatalogModel> data) =>
// //     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CatalogModel {
//   static List<Item>? items;
//   //Get item by ID
//   Item getById(int id) =>
//       items!.firstWhere((element) => element.id == id, orElse: null);
//   // items.firstWhere((element) => element.id == id);

//   //Get Item By Position
//   Item getByPosition(int pos) => items![pos];
// }

// class Item {
//   final int id;
//   final String name;
//   // final String desc;
//   // final String color;
//   // final num price;
//   // final String image;

//   Item({
//     required this.id,
//     required this.name,
//     // this.desc,
//     // this.color,
//     // this.price,
//     // this.image,
//   });

//   Item copyWith({
//     required int id,
//     required String name,
//     // String desc,
//     // String color,
//     // num price,
//     // String image,
//   }) {
//     return Item(
//       id: id,
//       name: name,
//       // desc: desc ?? this.desc,
//       // color: color ?? this.color,
//       // price: price ?? this.price,
//       // image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       // 'desc': desc,
//       // 'color': color,
//       // 'price': price,
//       // 'image': image,
//     };
//   }

//   factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       id: map['id'],
//       name: map['name'],
//       // desc: map['desc'],
//       // color: map['color'],
//       // price: map['price'],
//       // image: map['image'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Item(id: $id, name: $name)';
//     // desc: $desc, color: $color, price: $price, image: $image
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Item && other.id == id && other.name == name;
//     // &&
//     // other.desc == desc &&
//     // other.color == color &&
//     // other.price == price &&
//     // other.image == image;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^ name.hashCode;
//     // desc.hashCode ^
//     // color.hashCode ^
//     // price.hashCode ^
//     // image.hashCode;
//   }
// }
