import 'package:flutter/material.dart';

import '../account_page/account_screen.dart';
import '../home_page/home_screen.dart';
import '../search_page/search_screen.dart';

class IrlAppScreen extends StatefulWidget {
  const IrlAppScreen({super.key});

  @override
  State<IrlAppScreen> createState() => _IrlAppScreenState();
}

class _IrlAppScreenState extends State<IrlAppScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    const SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
