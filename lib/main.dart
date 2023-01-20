import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:irl/provider/cart_provider.dart';
import 'package:irl/provider/products_provider.dart';
import 'package:irl/provider/users_data.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'global/app_constants.dart';
import 'layout/irl_app/irl_app.dart';
import 'layout/start_screen/start_screen.dart';
import 'provider/my_booking_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDateFormatting();
  //? to initiate cache data box
  await Hive.initFlutter();

  //? cached data String is key to the box if you want to get and data
  var box = await Hive.openBox(AppConstants.cachedData);
  var box2 = await Hive.openBox<List<DateTimeRange>>("test1");

  // bool? isSkipped = box.get(AppConstants.isSkipped);
  //
  // log("isSkipped ========> $isSkipped ");
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersData()),
        ChangeNotifierProvider(create: (_) => ProductData()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => BookingProvider()),
      ],
      child: MyApp(
        // isSkipped: isSkipped,
      ),
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
      theme: AppConstants.customTheme,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          User? userData = snapshot.data;
          if (userData != null) {
            return const IrlAppScreen();
          } else {
            return isSkipped == null
                ? const StartScreen()
                : const IrlAppScreen();
          }
        },
      ),
    );
  }
}
