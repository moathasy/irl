import 'package:flutter/material.dart';
import 'package:irl/models/cart.dart';

class CartWidget extends StatelessWidget {
  final Cart cart;
  const CartWidget({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(cart.image!),
        ),
        title: Text(cart.productName!),
        subtitle: Text("${cart.price!} JD"),
        trailing: Text(cart.quantity!.toString()),
      ),
    );
  }
}
