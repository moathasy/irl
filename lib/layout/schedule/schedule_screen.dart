import 'dart:developer';

import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenAppState();
}

class _ScheduleScreenAppState extends State<ScheduleScreen> {
  final now = DateTime.now();
  late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    // DateTime.now().startOfDay
    // DateTime.now().endOfDay
    mockBookingService = BookingService(
      serviceName: 'Mock Service',
      serviceDuration: 30,
      bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
      bookingStart: DateTime(now.year, now.month, now.day, 8, 0),
    );
  }

  Stream<dynamic>? getBookingStreamMock({
    required DateTime end,
    required DateTime start,
  }) {
    return Stream.value([]);
  }

  Future<dynamic> uploadBookingMock({
    required BookingService newBooking,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(
      DateTimeRange(
        start: newBooking.bookingStart,
        end: newBooking.bookingEnd,
      ),
    );
    converted.add(
      DateTimeRange(
        start: newBooking.bookingStart,
        end: newBooking.bookingEnd,
      ),
    );
    log('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///take care this is only mock, so if you add today as disabledDays it will still be visible on the first load
    ///disabledDays will properly work with real data
    DateTime first = now;
    DateTime second = now.add(const Duration(minutes: 120));
    DateTime third = now.subtract(const Duration(minutes: 240));
    DateTime fourth = now.subtract(const Duration(minutes: 500));
    converted.add(
      DateTimeRange(start: first, end: now.add(const Duration(minutes: 60))),
    );
    converted.add(
      DateTimeRange(
        start: second,
        end: second.add(const Duration(minutes: 23)),
      ),
    );
    converted.add(
      DateTimeRange(
        start: third,
        end: third.add(const Duration(minutes: 15)),
      ),
    );
    converted.add(
      DateTimeRange(
        start: fourth,
        end: fourth.add(const Duration(minutes: 50)),
      ),
    );
    return converted;
  }

  List<DateTimeRange> generatePauseSlots() {
    return [
      DateTimeRange(
        start: DateTime(now.year, now.month, now.day, 12, 0),
        end: DateTime(now.year, now.month, now.day, 13, 0),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking Calendar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Booking Calendar Demo'),
        ),
        body: Center(
          child: BookingCalendar(
            bookedSlotTextStyle:
                const TextStyle(color: Colors.white, fontSize: 24),
            availableSlotTextStyle:
                TextStyle(color: Colors.blue[900], fontSize: 24),
            selectedSlotTextStyle: TextStyle(
              color: Colors.red[900],
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            bookingService: mockBookingService,
            convertStreamResultToDateTimeRanges: convertStreamResultMock,
            getBookingStream: getBookingStreamMock,
            uploadBooking: uploadBookingMock,
            pauseSlots: generatePauseSlots(),
            pauseSlotText: 'LUNCH',
            hideBreakTime: false,
            loadingWidget: const Text('Fetching data...'),
            uploadingWidget: const CircularProgressIndicator(),
            locale: 'hu_HU',
            startingDayOfWeek: StartingDayOfWeek.tuesday,
            disabledDays: const [1, 2, 3, 7],
          ),
        ),
      ),
    );
  }
}
