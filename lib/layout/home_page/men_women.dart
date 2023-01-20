import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/salons_category/men_salons/men.dart';
import 'package:irl/layout/home_page/salons_category/wemon_salons/wemon_salons.dart';

class MenWomen extends StatelessWidget {
  const MenWomen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'SALONS',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.brown,
            labelColor: Colors.brown.shade900,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.male_outlined,
                  size: 35.0,
                  color: Colors.brown.shade500,
                ),
                text: 'Male',
              ),
              Tab(
                icon: Icon(
                  Icons.female_outlined,
                  size: 37.0,
                  color: Colors.brown.shade500,
                ),
                text: 'Female',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Men(),
            WomenSalons(),
          ],
        ),
      ),
    );
  }
}
