import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import 'store_booking_provider.dart';

class BookingProvider with ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final List<BookedServices> _myBooking = [];

  Future<void> fetchMyBookings() async {
    String? uId = _auth.currentUser!.uid;
    try {
      final response = await FirebaseFirestore.instance
          .collection("myBookedServices")
          .doc(uId)
          .collection("MyBookings")
          .get();

      if (response.docs.isNotEmpty) {
        final data = response.docs;
        for (var i in data) {
          final x = i.data();
          _myBooking.add(BookedServices.fromJson(x));
          log(BookedServices.fromJson(x).toString());
        }
      }
    } catch (e) {
      log("error fetchMyBookings ==> $e ");
    }
  }

  List<BookedServices> get getBookingList => _myBooking;
}
