import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:irl/models/cart.dart';
import 'package:irl/models/product.dart';

class CartProvider with ChangeNotifier {
  final List<Cart> _cart = [];

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
      cartItem.quantity = cartItem.quantity! - 1;
      Fluttertoast.showToast(msg: "product quantity decreased");
    }
    notifyListeners();
  }

  void clearList() => _cart.clear();

  List<Cart> get getCartList => _cart;
  int get getCounter => _cart.length;
}
