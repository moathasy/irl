import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/cosmetics/widgets/product_widge.dart';
import 'package:irl/models/product.dart';
import 'package:provider/provider.dart';

import '../../../provider/cart_provider.dart';
import 'cart/cart_screen.dart';

class ProductsScreen extends StatefulWidget {
  final String shop;
  final List<Product> productList;
  const ProductsScreen({
    Key? key,
    required this.shop,
    required this.productList,
  }) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late String title = widget.shop;
  List<Product> productList = [];

  @override
  void initState() {
    productList = widget.productList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.brown,
        centerTitle: true,
        title: Text(title),
        actions: [
          Badge(
            badgeContent: Consumer<CartProvider>(
              builder: (context, value, child) {
                return Text(
                  value.getCounter.toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                );
              },
            ),
            position: const BadgePosition(start: 30, bottom: 30),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(
                      storeName: title,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: productList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 5),
                itemCount: productList.length,
                itemBuilder: (context, index) => ProductWidget(
                  product: productList[index],
                ),
              ),
      )),
    );
  }
}
