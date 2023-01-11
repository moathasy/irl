class Salon {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<Map<String, dynamic>>? photosList;
  final List<SalonTask> salonTask;

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
}
