import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:irl/models/cart.dart';
import 'package:irl/models/product.dart';
import 'package:uuid/uuid.dart';

import '../models/order.dart';

class CartProvider with ChangeNotifier {
  var uuid = const Uuid();

  List<Cart> _cart = [];
  final List<Order> _orders = [];

  // add to cart
  void addProductToCart({
    required Product product,
  }) {
    Cart? cartItem = _cart.firstWhere(
        (element) => element.productId == product.id,
        orElse: () => Cart.empty());

    if (cartItem == Cart.empty()) {
      final Cart item = Cart(
        id: null,
        productId: product.id,
        productName: product.title,
        price: product.price,
        quantity: 1,
        image: product.imageUrl,
      );
      _cart.add(item);
      Fluttertoast.showToast(msg: "product add to the cart");
    } else {
      changeQuantityCart(increase: true, id: product.id!);
    }
    notifyListeners();
  }

  void removeProductForCart({
    required String id,
  }) {
    _cart.removeWhere((element) => element.productId == id);
    notifyListeners();
  }

  void changeQuantityCart({
    required bool increase,
    required String id,
  }) {
    Cart cartItem = _cart.firstWhere((element) => element.productId == id);
    if (increase) {
      cartItem.quantity = cartItem.quantity! + 1;
      Fluttertoast.showToast(msg: "product quantity increased");
    } else {
      if (cartItem.quantity == 1) {
        _cart.remove(cartItem);
      } else {
        cartItem.quantity = cartItem.quantity! - 1;
      }

      Fluttertoast.showToast(msg: "product quantity decreased");
    }
    notifyListeners();
  }

  double getTotal() {
    double total = 0;
    for (var i in _cart) {
      total += double.parse(i.price!) * i.quantity!;
    }
    return total;
  }

  //* dirty code
  void onSubmitOrder(String storeName) {
    double total = 0;
    for (var i in _cart) {
      total += double.parse(i.price!);
    }
    final order = Order(
      id: uuid.v1(),
      storeName: storeName,
      cart: _cart,
      total: total,
    );
    log(order.toString());
    _orders.add(order);

    _cart = [];
    notifyListeners();
  }

  void clearList() => _cart.clear();

  List<Cart> get getCartList => _cart;
  List<Order> get getOrderList => _orders;
  int get getCounter => _cart.length;
}
