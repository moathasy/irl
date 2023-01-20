import 'package:flutter/material.dart';

import '../../../../../models/salon_model.dart';
import '../../salons_details/salons_details_screen.dart';

class MenSalonsWidget extends StatelessWidget {
  final Salon salon;
  const MenSalonsWidget({
    super.key,
    required this.salon,
  });

  @override
  Widget build(BuildContext context){
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
          backgroundImage: AssetImage(salon.imageUrl),
          radius: 30,
        ),
        title: Text(
          salon.name,
          style: const TextStyle(fontSize: 18),
          overflow: TextOverflow.visible,
        ),
        style: ListTileStyle.drawer,
        subtitle: Text(
          salon.description,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
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
