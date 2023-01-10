import 'package:flutter/material.dart';
import 'package:irl/models/product.dart';
import 'package:irl/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GridTile(
        header: Container(
          alignment: Alignment.bottomRight,
          child: IconButton(
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
        footer: Container(
          padding: const EdgeInsets.all(5),
          alignment: Alignment.center,
          color: Colors.black26,
          child: Row(
            children: [
              Text(
                product.title!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                "${product.price!} JD",
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FadeInImage(
            fit: BoxFit.cover,
            image: NetworkImage(product.imageUrl!),
            placeholder: const AssetImage("assets/images/place_holder.png"),
          ),
        ),
      ),
    );
  }
}
