import 'package:flutter/material.dart';
import 'package:irl/layout/my_booking/widgets/booking_widget.dart';
import 'package:provider/provider.dart';

import '../../provider/my_booking_provider.dart';
import '../../provider/store_booking_provider.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  List<BookedServices> myBooking = [];

  @override
  void initState() {
    myBooking =
        Provider.of<BookingProvider>(context, listen: false).getBookingList;
    if (myBooking.isEmpty) {
      fetchMyBookings();
    }
    super.initState();
  }

  void fetchMyBookings() async {
    await Provider.of<BookingProvider>(context, listen: false)
        .fetchMyBookings()
        .then((value) {
      myBooking =
          Provider.of<BookingProvider>(context, listen: false).getBookingList;
      setState(() {});
    });
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
            "My Booking",
            style: TextStyle(
              fontFamily: "Lora",
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: myBooking.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: myBooking.length,
                itemBuilder: (context, index) => BookingWidget(
                  book: myBooking[index],
                ),
              ),
            ),
    );
  }
}
