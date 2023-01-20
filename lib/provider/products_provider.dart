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
    // _allProducts.removeWhere((element) => element.id =="48WeTMmktShnWnG7434t");
    notifyListeners();
  }

  List<Product> searchInProducts(String searchText) =>
      _allProducts.where((element) {
        String pName = element.title!.toLowerCase();
        String search = searchText.toLowerCase();
        return pName.contains(search);
      }).toList();

  List<Product> get getAllProductList => _allProducts;
}
