import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irl/layout/irl_login/login_page.dart';
import 'package:irl/layout/orders/cosmatics_order.dart';
import 'package:provider/provider.dart';

import '../../../../models/cart.dart';
import '../../../../provider/cart_provider.dart';
import 'widgets/cart_widget.dart';

class CartScreen extends StatefulWidget {
  final String storeName;
  const CartScreen({super.key, required this.storeName});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  User? userData = FirebaseAuth.instance.currentUser;
  late String storeName;
  List<Cart> cart = [];
  double total = 0;

  @override
  void initState() {
    storeName = widget.storeName;
    super.initState();
  }

  void fetchData() async {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    cart = cartProvider.getCartList;
    getTotal();
  }

  void updateCart(bool increase, String id) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    cartProvider.changeQuantityCart(increase: increase, id: id);
    setState(() {
      cart = cartProvider.getCartList;
    });
    getTotal();
  }

  void getTotal() {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    total = cartProvider.getTotal();
  }

  @override
  Widget build(BuildContext context) {
    
    fetchData();
    return Scaffold(
      appBar: AppBar(
        elevation: 13.0,
        // this need to be set
        backgroundColor: Colors.transparent,
        // create gradient background color
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.brown.shade600.withOpacity(0.5),
                Colors.white.withOpacity(0.4),
                Colors.brown.shade600.withOpacity(0.7)
              ],
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Cart",
            style: TextStyle(
              fontFamily: "Lora",
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) => CartWidget(
            cart: cart[index],
            changeQuantity: updateCart,
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("total"),
                    Text(
                      total.toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown,
                        )),
                        onPressed: () {
                          if(userData == null ){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen()));
                          }else{
                            Provider.of<CartProvider>(context, listen: false)
                                .onSubmitOrder(storeName);

                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (_) => const MyCosmeticsOrder(),
                                ),
                                    (route) => false);
                          }
                         
                          
                        },
                        child:  Text(
                         userData==null ? "Login First": "Submit Order",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
