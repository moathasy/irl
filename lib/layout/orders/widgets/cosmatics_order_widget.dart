import 'package:flutter/material.dart';
import 'package:irl/models/order.dart';

class MyOrderWidget extends StatefulWidget {
  final Order oneOrder;
  const MyOrderWidget({super.key, required this.oneOrder});

  @override
  State<MyOrderWidget> createState() => _MyOrderWidgetState();
}

class _MyOrderWidgetState extends State<MyOrderWidget> {
  late Order oneOrder;
  bool isExpanded = false;
  @override
  void initState() {
    oneOrder = widget.oneOrder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Card(
            child: ListTile(
              title: Text(widget.oneOrder.storeName),
              subtitle: Text("order quantity ${widget.oneOrder.cart.length}"),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () => setState(() {
                  isExpanded = !isExpanded;
                }),
              ),
            ),
          ),
          if (isExpanded)
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: oneOrder.cart.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Image.network(oneOrder.cart[index].image!),
                  ),
                  title: Text(oneOrder.cart[index].productName!),
                  subtitle: Text(oneOrder.cart[index].quantity!.toString()),
                  trailing: Text("${oneOrder.cart[index].price!}JD"),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
