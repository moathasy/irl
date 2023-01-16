import 'package:flutter/material.dart';
import 'package:irl/models/cart.dart';

class CartWidget extends StatelessWidget {
  final Cart cart;
  final void Function(bool increase, String id) changeQuantity;
  const CartWidget({
    super.key,
    required this.cart,
    required this.changeQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Image.network(cart.image!),
          ),
          title: Text(cart.productName!),
          subtitle: Text("${cart.price!} JD"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => changeQuantity(false, cart.productId!),
                icon: const Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(cart.quantity!.toString()),
              ),
              IconButton(
                onPressed: () => changeQuantity(true, cart.productId!),
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
