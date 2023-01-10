import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? price;
  final int? shop;
  bool? isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.shop,
    this.isFavorite = false,
  });

  factory Product.fromJson(Map<String, dynamic> json, String? id) => Product(
        id: id,
        title: json["title"] ?? '',
        description: json["description"] ?? '',
        imageUrl: json["imageUrl"] ?? '',
        price: json["price"] ?? '',
        shop: int.tryParse(json["shop"] ??= '0'),
        isFavorite: json["isFavorite"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "imageUrl": imageUrl,
        "price": price,
        "shop": shop,
        "isFavorite": isFavorite,
      };

  @override
  String toString() => {
        "title": title,
        "description": description,
        "imageUrl": imageUrl,
        "price": price,
        "isFavorite": isFavorite,
      }.toString();
}
