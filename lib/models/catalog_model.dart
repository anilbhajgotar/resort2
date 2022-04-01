import 'dart:convert';

class CatalogModel {
  static List<Items>? items;
}

class Items {
  final int id;
  final String title;
  final String description;
  final String location;
  final String image;
  Items({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.image,
  });

  Items copyWith({
    int? id,
    String? title,
    String? description,
    String? location,
    String? image,
  }) {
    return Items(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'location': location,
      'image': image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      location: map['location'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Items(id: $id, title: $title, description: $description, location: $location, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Items &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.location == location &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        location.hashCode ^
        image.hashCode;
  }
}
