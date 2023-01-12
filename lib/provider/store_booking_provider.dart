import '../models/salon_model.dart';

class BookedServices {
  final String? storeName;
  final List<SalonTask>? serviceList;
  final String? uName;
  final String? uId;

  BookedServices({
    required this.storeName,
    required this.serviceList,
    required this.uName,
    required this.uId,
  });
  factory BookedServices.fromJson(Map<String, dynamic> json) => BookedServices(
        storeName: json["storeName"],
        serviceList: json["serviceList"]
            .map<SalonTask>((item) => SalonTask.fromJson(item))
            .toList(),
        uName: json["uName"],
        uId: json["uId"],
      );

  Map<String, dynamic> toJson() => {
        "uId": uId,
        "uName": uName,
        "serviceList": serviceList!
            .map(
              (task) => task.toJson(),
            )
            .toList(),
        "storeName": storeName,
      };

  @override
  String toString() => {
        "uId": uId,
        "uName": uName,
        "serviceList": serviceList,
        "storeName": storeName,
      }.toString();
}

class Booking {
  final DateTime? bookingStart;
  final DateTime? bookingEnd;

  Booking({
    required this.bookingStart,
    required this.bookingEnd,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        bookingStart: DateTime.parse(json['bookingStart']),
        bookingEnd: DateTime.parse(json['bookingEnd']),
      );

  Map<String, dynamic> toJson() => {
        'bookingStart': bookingStart!.toIso8601String(),
        'bookingEnd': bookingEnd!.toIso8601String(),
      };

  @override
  String toString() => {
        'bookingStart': bookingStart,
        'bookingEnd': bookingEnd,
      }.toString();
}
