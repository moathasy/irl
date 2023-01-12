class Salon {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<Map<String, dynamic>>? photosList;
  List<SalonTask> salonTask;

  Salon({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.salonTask,
    required this.photosList,
  });
}

class SalonTask {
  final String? taskId;
  final String? taskName;
  final String? taskDuration;
  final String? taskPrice;

  SalonTask({
    required this.taskId,
    required this.taskName,
    required this.taskDuration,
    required this.taskPrice,
  });

  factory SalonTask.fromJson(Map<String, dynamic> json) => SalonTask(
        taskId: json["taskId"],
        taskName: json["taskName"],
        taskDuration: json["taskDuration"],
        taskPrice: json["taskPrice"],
      );

  Map<String, dynamic> toJson() => {
        "taskId": taskId,
        "taskName": taskName,
        "taskDuration": taskDuration,
        "taskPrice": taskPrice,
      };

  @override
  String toString() => {
        "taskId": taskId,
        "taskName": taskName,
        "taskDuration": taskDuration,
        "taskPrice": taskPrice,
      }.toString();
}
