import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  Future<void> signOut(BuildContext context) async =>
      await FirebaseAuth.instance.signOut().then((value) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false,
        );
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: MaterialButton(
            onPressed: () => signOut(context),
            child: const Text(
              'SIGN OUT ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
