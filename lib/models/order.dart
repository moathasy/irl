import 'package:irl/models/cart.dart';

class Order {
  final String id;
  final String storeName;
  final List<Cart> cart;
  final double total;

  Order({
    required this.id,
    required this.storeName,
    required this.cart,
    required this.total,
  });

  Map<String, dynamic> toMap() => {
        "id": id,
        'storeName': storeName,
        'cart': cart,
        'total': total,
      };

  @override
  bool operator ==(covariant Order other) =>
      other.id == id &&
      other.storeName == storeName &&
      other.cart == cart &&
      other.total == total;

  @override
  int get hashCode => Object.hash(
        id,
        storeName,
        cart,
        total,
      );

  @override
  String toString() => {
        'id': id,
        'storeName': storeName,
        'cart': cart,
        'total': total,
      }.toString();
}
