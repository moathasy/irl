import 'package:flutter/material.dart';
import 'package:irl/layout/irl_login/login_page.dart';
import 'package:provider/provider.dart';

import '../../provider/products_provider.dart';
import '../../provider/users_data.dart';
import '../account_page/account_screen.dart';
import '../home_page/home_screen.dart';
import '../search_page/search_screen.dart';

class IrlAppScreen extends StatefulWidget {
  const IrlAppScreen({super.key});

  @override
  State<IrlAppScreen> createState() => _IrlAppScreenState();
}

class _IrlAppScreenState extends State<IrlAppScreen> {
  final userAuth = UsersData.authData;
  int currentIndex = 0;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    await Provider.of<UsersData>(context, listen: false).fetchUserData();
    if (!mounted) return;
    await Provider.of<ProductData>(context, listen: false).fetchFarmasiShop();
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
      const SearchScreen(),
      userAuth.currentUser != null
          ? const AccountScreen()
          : const LoginScreen(),
    ];

    return Scaffold(
      body: SafeArea(child: screens[currentIndex]),
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
