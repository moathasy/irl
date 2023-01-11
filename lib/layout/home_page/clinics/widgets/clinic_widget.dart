import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/salons_category/salons_details/salons_details_screen.dart';
import 'package:irl/models/salon_model.dart';

class ClinicWidget extends StatelessWidget {
  final Salon salon;
  const ClinicWidget({super.key, required this.salon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(14),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.brown, width: 4),
          borderRadius: BorderRadius.circular(15),
        ),
        iconColor: Colors.brown.shade400,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            salon.imageUrl,
          ),
          radius: 30,
        ),
        title: Text(
          salon.name,
          style: const TextStyle(fontFamily: "Lora", fontSize: 18),
          overflow: TextOverflow.visible,
        ),
        style: ListTileStyle.drawer,
        subtitle: const Text(
          'Find beauty with us ...',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SalonsDetailsScreen(
                  salon: salon,
                ),
              ),
            );
          },
          icon: const Icon(
            Icons.play_arrow,
            size: 40,
          ),
        ),
      ),
    );
  }
}
