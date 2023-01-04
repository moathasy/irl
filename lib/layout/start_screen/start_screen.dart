import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:irl_graduation_project/global/app_constants.dart';

import '../home_page/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Future<void> cache() async {
    var cachedData = await Hive.openBox(AppConstants.cachedData);
    cachedData.put(AppConstants.isSkipped, true);
    log("cached Data successfully");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'IN REAL LIFE',
            body: 'To Bring You A Real Beauty Life ... ',
            image: buildImage('assets/images/IRL (5) 1.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'IN REAL LIFE',
            body:
                'Easily brows For products from your favorite cosmetic stores ... ',
            image: buildImage('assets/images/Group 121.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'IN REAL LIFE',
            body: 'Save time and hassle with our convenient booking app! ',
            image: buildImage('assets/images/Group 1.png'),
            decoration: getPageDecoration(),
          )
        ],
        done: const Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.brown,
            fontFamily: 'Lora',
            fontSize: 20,
          ),
        ),
        onDone: () {
          cache();
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
            (route) => false,
          );
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.brown),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.brown,
        ),
        showNextButton: true,
        dotsDecorator: getDotDecoration(),
        animationDuration: 7,
      ),
    );
  }

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          width: 600,
          height: 300,
        ),
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        color: Colors.brown.shade300,
        activeColor: Colors.brown,
        activeSize: const Size(20, 10),
        size: const Size(10, 10),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lora',
          color: Colors.brown.shade700,
        ),
        bodyTextStyle: const TextStyle(
          fontSize: 35,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
        // descriptionPadding:EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
        pageColor: Colors.brown.shade200,
      );
}
