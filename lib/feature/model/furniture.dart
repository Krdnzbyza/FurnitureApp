// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

Furniture welcomeFromMap(String str) => Furniture.fromMap(json.decode(str));

String welcomeToMap(Furniture data) => json.encode(data.toMap());

class Furniture {
  Furniture({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  factory Furniture.fromMap(Map<String, dynamic> json) => Furniture(
        id: json['id'],
        title: json['title'],
        price: json['price'] == null ? null : json['price'].toDouble(),
        description: json['description'],
        category: json['category'],
        image: json['image'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      };
}
