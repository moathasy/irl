import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:irl/models/product.dart';
import 'package:irl/provider/products_provider.dart';
import 'package:provider/provider.dart';

import '../../provider/cart_provider.dart';
import '../home_page/cosmetics/cart/cart_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> searchProduct = [];
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void searchedList(String text) => setState(() {
        searchProduct = Provider.of<ProductData>(context, listen: false)
            .searchInProducts(text);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            label: const Text(
              "Search",
            ),
            prefixIcon: const Icon(
              Icons.search,
            ),
            suffixIcon: Badge(
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
                      builder: (context) => const CartScreen(
                        storeName: 'BLOOM BEAUTY',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
          onChanged: (val) {
            searchedList(val);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: searchProduct.length,
        itemBuilder: (ctx, index) => ProductWidget(
          product: searchProduct[index],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            child: Image.network(
              product.imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(product.title!),
        subtitle: Text("${product.price!} JD"),
        trailing: IconButton(
          onPressed: () => cartProvider.addProductToCart(product: product),
          icon: Container(
            width: 50,
            color: Colors.black12,
            child: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ),
      ),
    );
  }
}
