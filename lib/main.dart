import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:irl_graduation_project/layout/irl_app/irl_app.dart';
import 'package:irl_graduation_project/moduels/home_page/cosmatics/cosmatics_page.dart';
import 'package:irl_graduation_project/moduels/home_page/first_cosmatics.dart';
import 'package:irl_graduation_project/moduels/home_page/first_shop.dart';
import 'package:irl_graduation_project/moduels/home_page/home_screen.dart';
import 'package:irl_graduation_project/moduels/home_page/men.dart';
import 'package:irl_graduation_project/moduels/home_page/men_women.dart';
import 'package:irl_graduation_project/moduels/home_page/cosmatics/product.dart';
import 'package:irl_graduation_project/moduels/home_page/salons/first_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/salons/fourth_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/salons/second_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/salons/third_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/women.dart';
import 'package:irl_graduation_project/moduels/irl_login/login_page.dart';
import 'package:irl_graduation_project/moduels/irl_login/signup_page.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Product(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown.shade50,
        appBarTheme: AppBarTheme(
          elevation: 14.0,
          backgroundColor: Colors.brown.shade100
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.brown.shade100,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,

        )

      ),
    );

  }

}