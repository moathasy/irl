import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'global/app_constants.dart';
import 'layout/home_page/home_screen.dart';
import 'layout/start_screen/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //? to initiate cache data box
  await Hive.initFlutter();

  //? cached data String is key to the box if you want to get and data
  var box = await Hive.openBox(AppConstants.cachedData);

  bool? isSkipped = box.get(AppConstants.isSkipped);

  log("isSkipped ========> $isSkipped ");
  runApp(
    MyApp(
      isSkipped: isSkipped,
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool? isSkipped;
  const MyApp({super.key, this.isSkipped});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isSkipped == null ? const StartScreen() : HomeScreen(),
      theme: AppConstants.customTheme,
    );
  }
}
