import 'package:flutter/material.dart';

import '../../../provider/store_booking_provider.dart';

class BookingWidget extends StatefulWidget {
  final BookedServices book;
  const BookingWidget({super.key, required this.book});

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  late BookedServices book;
  bool isExpanded = false;

  @override
  void initState() {
    book = widget.book;
    super.initState();
  }

  String getTotal() {
    double total = 0;
    for (var i in book.serviceList!) {
      total += double.parse(i.taskPrice!);
    }
    return total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(book.storeName!),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              onPressed: () => setState(() {
                isExpanded = !isExpanded;
              }),
            ),
          ),
          if (isExpanded)
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: book.serviceList!.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(book.serviceList![index].taskName!),
                  subtitle: Text(book.serviceList![index].taskDuration!),
                  trailing: Text("${book.serviceList![index].taskPrice!}JD"),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
