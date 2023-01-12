import 'package:flutter/material.dart';
import 'package:irl/models/salon_model.dart';

class SalonDetailsWidget extends StatefulWidget {
  final SalonTask salonTask;
  final void Function(SalonTask task) getTask;
  const SalonDetailsWidget({
    super.key,
    required this.salonTask,
    required this.getTask,
  });

  @override
  State<SalonDetailsWidget> createState() => _SalonDetailsWidgetState();
}

class _SalonDetailsWidgetState extends State<SalonDetailsWidget> {
  SalonTask? salonTask;
  late void Function(SalonTask task) getTask = widget.getTask;
  @override
  void initState() {
    salonTask = widget.salonTask;
    super.initState();
  }

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.brown.shade700, width: 1),
        ),
        iconColor: Colors.brown.shade800,
        leading: Checkbox(
          value: selected,
          onChanged: (value) {
            setState(() {
              selected = value ?? false;
              if (selected) getTask(salonTask!);
            });
          },
        ),
        title: Text(
          salonTask!.taskName!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          salonTask!.taskDuration!,
          style: const TextStyle(fontSize: 15),
        ),
        trailing: Text(
          salonTask!.taskPrice!,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
