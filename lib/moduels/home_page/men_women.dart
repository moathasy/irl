import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/home_page/men.dart';
import 'package:irl_graduation_project/moduels/home_page/women.dart';


class MenWomen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
        appBar: AppBar(
        title: Center(
          child: Text('SALONS',style: TextStyle(
            color: Colors.brown,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),),
        ),
    bottom: TabBar(
      indicatorColor: Colors.brown,
      labelColor: Colors.brown.shade900,
    tabs: [
    Tab(icon: Icon(Icons.male_outlined,size: 35.0,color: Colors.brown.shade500,), text: 'Male'),
    Tab(icon: Icon(Icons.female_outlined,size: 37.0,color: Colors.brown.shade500,), text: 'Female')
    ],
    ),
    ),
    body: TabBarView(
    children: [
      Men(), Women()
      ],
    ),
    )
    );
  }
}