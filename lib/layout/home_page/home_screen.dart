import 'package:flutter/material.dart';
import 'package:irl/widgets/home_screen_card.dart';

import 'clinics/clinics_all.dart';
import 'cosmetics/cosmetics_page.dart';
import 'men_women.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
      ),
      body: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              HomeScreenCard(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenWomen(),
                  ),
                ),
                title: "Salons",
                image: "assets/images/salons.jpg",
              ),
              HomeScreenCard(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ClinicsAll(),
                  ),
                ),
                title: 'Clinics',
                image: 'assets/images/clinics.jpg',
              ),
              HomeScreenCard(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cosmetics(),
                  ),
                ),
                title: 'Cosmetics',
                image: 'assets/images/cusma.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
