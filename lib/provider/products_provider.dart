import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

import '../models/product.dart';

class ProductData with ChangeNotifier {
  static final fbFarmasiShopData =
      FirebaseFirestore.instance.collection("Products");
  final List<Product> _allProducts = [];
  Future<void> fetchFarmasiShop() async {
    try {
      final response = await fbFarmasiShopData.get();
      if (response.docs.isNotEmpty) {
        final data = response.docs;
        for (var i in data) {
          _allProducts.add(Product.fromJson(i.data(), i.id));
        }
      }
    } catch (error) {
      log("fetch Farmasi Shop data error $error");
    }
    notifyListeners();
  }

  List<Product> get getAllProductList => _allProducts;
}
