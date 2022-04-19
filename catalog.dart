//ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:flutter_application_1/widget/itaem_widget.dart';

class CatalogModels {
  static List<dynamic> Item = [
    item(
      id: 1,
      name: "iphon 12 pro",
      desc: "Apple iphon 12th pro max",
      price: 999,
      color: "#33505a",
      image: "assets/images/b.jpg",
    )
  ];
}

class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  item copyWith({
    required int id,
    required String name,
    required String desc,
    required num price,
    required String color,
    required String image,
  }) {
    return item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory item.fromMap(Map<String, dynamic> map) {
    if (map = null) return null;

    return item(
     id: map['id'],
     name: map['name'], 
     desc: map['desc'],
     price:map['price'],
     color: map['color'],
     image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory item.fromJson(String source) =>
      item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
