import 'package:flutter/material.dart';

class Cosmetics extends StatefulWidget {
  @override
  State<Cosmetics> createState() => _CosmeticsState();
}

class _CosmeticsState extends State<Cosmetics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'cosmetics',
            style: TextStyle(
              color: Colors.brown,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
        // implement add ListView that contains multiple ListTiles
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.brown, width: 4),
                borderRadius: BorderRadius.circular(15),
              ),
              iconColor: Colors.brown.shade400,
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/A-multi-step-body-care-routine-could-be-the-need-of-the-hour-heres-why (1).webp',
                ),
              ),
              title: const Text(
                'FARMASI SHOP',
                style: TextStyle(fontSize: 18),
                overflow: TextOverflow.visible,
              ),
              style: ListTileStyle.drawer,
              subtitle: const Text(
                'Be Young Every Day...',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.brown, width: 4),
                borderRadius: BorderRadius.circular(15),
              ),
              iconColor: Colors.brown.shade400,
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/cosmetic-product-packaging-mockup_1150-40282.webp',
                ),
              ),
              title: const Text(
                'BLOOM BEAUTY',
                style: TextStyle(fontSize: 18),
                overflow: TextOverflow.visible,
              ),
              style: ListTileStyle.drawer,
              subtitle: const Text(
                'Inspire YourSelf...Be Your Own',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.brown, width: 4),
                borderRadius: BorderRadius.circular(15),
              ),
              iconColor: Colors.brown.shade400,
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/A-multi-step-body-care-routine-could-be-the-need-of-the-hour-heres-why (1).webp',
                ),
              ),
              title: const Text(
                'MAJIC MAKEUP',
                style: TextStyle(fontSize: 18),
                overflow: TextOverflow.visible,
              ),
              style: ListTileStyle.drawer,
              subtitle: const Text(
                'Beauty Lise Skin Deep...',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
