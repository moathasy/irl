import 'package:flutter/material.dart';
import 'package:irl/layout/orders/widgets/cosmatics_order_widget.dart';
import 'package:irl/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../models/order.dart';

class MyCosmeticsOrder extends StatefulWidget {
  const MyCosmeticsOrder({super.key});

  @override
  State<MyCosmeticsOrder> createState() => _MyCosmeticsOrderState();
}

class _MyCosmeticsOrderState extends State<MyCosmeticsOrder> {
  List<Order> myOrders = [];

  @override
  void initState() {
    myOrders = Provider.of<CartProvider>(context, listen: false).getOrderList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            "My Cosmetics Orders",
            style: TextStyle(
              fontFamily: "Lora",
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: myOrders.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: myOrders.length,
              itemBuilder: (context, index) => MyOrderWidget(
                oneOrder: myOrders[index],
              ),
            ),
    );
  }
}
