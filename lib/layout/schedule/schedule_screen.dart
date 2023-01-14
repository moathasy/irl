import 'dart:developer';

import 'package:booking_calendar/booking_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:irl/layout/booked_successfully.dart';
import 'package:irl/models/salon_model.dart';
import 'package:irl/models/user.dart';
import 'package:provider/provider.dart';

import '../../provider/store_booking_provider.dart';
import '../../provider/users_data.dart';

class ScheduleScreen extends StatefulWidget {
  final Salon salon;

  const ScheduleScreen({
    Key? key,
    required this.salon,
  }) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenAppState();
}

class _ScheduleScreenAppState extends State<ScheduleScreen> {
  late Account userAccount;
  final now = DateTime.now();
  late Salon salon = widget.salon;

  BookingService? mockBookingService;
  List<DateTimeRange> converted = [];

  @override
  void initState() {
    userAccount = Provider.of<UsersData>(context, listen: false).getAccount;
    if (userAccount == Account.empty()) {
      fetchData();
    }
    super.initState();

    mockBookingService = BookingService(
      serviceName: 'Mock Service',
      serviceDuration: 30,
      bookingStart: DateTime(now.year, now.month, now.day, 8, 0),
      bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
    );
  }

  void fetchData() async =>
      await Provider.of<UsersData>(context, listen: false).fetchUserData().then(
            (value) => userAccount =
                Provider.of<UsersData>(context, listen: false).getAccount,
          );

  final bookings = FirebaseFirestore.instance.collection('StoreBooking');

  final bookedServices =
      FirebaseFirestore.instance.collection('myBookedServices');

  ///This is how can you get the reference to your data from the collection, and serialize the data with the help of the Firestore [withConverter]. This function would be in your repository.
  CollectionReference<Booking> getBookingStream() {
    return bookings.doc(salon.id).collection('bookings').withConverter<Booking>(
          fromFirestore: (snapshots, _) => Booking.fromJson(snapshots.data()!),
          toFirestore: (snapshots, _) => snapshots.toJson(),
        );
  }

  ///How you actually get the stream of data from Firestore with the help of the previous function
  ///note that this query filters are for my data structure, you need to adjust it to your solution.
  Stream<dynamic>? getBookingStreamFirebase(
      {required DateTime end, required DateTime start}) {
    return getBookingStream().snapshots();
  }

  List<DateTimeRange> a7a({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///Note that this is dynamic, so you need to know what properties are available on your result, in our case the [SportBooking] has bookingStart and bookingEnd property
    log("this is stream Result${streamResult.size}");
    for (var i = 0; i < streamResult.size; i++) {
      final item = streamResult.docs[i].data();
      converted.add(
        DateTimeRange(
          start: (item.bookingStart!),
          end: (item.bookingEnd!),
        ),
      );
    }
    return converted;
  }

  ///This is how you upload data to Firestore
  Future<dynamic> uploadBookingFirebase(
      {required BookingService newBooking}) async {
    BookedServices booked = BookedServices(
        storeName: salon.name,
        serviceList: salon.salonTask,
        uName: userAccount.name,
        uId: userAccount.id);
    await bookings
        .doc(salon.id)
        .collection('bookings')
        .add(newBooking.toJson())
        .then(
          (value) async => await bookedServices
              .doc(userAccount.id)
              .collection("MyBookings")
              .add(
                booked.toJson(),
              ),
        )
        .then((value) => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const BookedSuccessfully()),
            (route) => false))
        .catchError((error) => log("Failed to add booking: $error"));
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
        title: Center(
          child: Text(
            "Booking ${salon.name}",
            style: const TextStyle(
              fontFamily: "Lora",
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: BookingCalendar(
          bookingButtonColor: Colors.brown,
          availableSlotColor: Colors.brown,
          bookedSlotTextStyle:
              const TextStyle(color: Colors.white, fontSize: 24),
          availableSlotTextStyle:
              const TextStyle(color: Colors.white, fontSize: 24),
          selectedSlotTextStyle: TextStyle(
            color: Colors.red[900],
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          bookingService: mockBookingService!,
          convertStreamResultToDateTimeRanges: a7a,
          getBookingStream: getBookingStreamFirebase,
          uploadBooking: uploadBookingFirebase,
          pauseSlotText: 'LUNCH',
          hideBreakTime: false,
          loadingWidget: const Text('Fetching data...'),
          uploadingWidget: const CircularProgressIndicator(),
          startingDayOfWeek: StartingDayOfWeek.saturday,
          disabledDays: const [5],
        ),
      ),
    );
  }
}
