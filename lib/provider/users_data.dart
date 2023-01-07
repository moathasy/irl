import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irl/models/user.dart';

import '../layout/irl_app/irl_app.dart';

class UsersData with ChangeNotifier {
  static final authData = FirebaseAuth.instance;
  static final fbUserData = FirebaseFirestore.instance.collection("Users");
  Account _userData = Account.empty();

  Future<Account> fetchUserData() async {
    try {
      final response = await fbUserData.doc(authData.currentUser!.uid).get();
      if (response.exists) {
        final userData = response.data();
        _userData = Account.formJson(userData!, authData.currentUser!.uid);
        log(_userData.toString());
      }
    } catch (error) {
      log(error.toString());
    }
    log("user Data fetched");
    return _userData;
  }

  static Future<void> onLogout({
    required BuildContext ctx,
  }) async {
    await authData.signOut().then(
          (value) => Navigator.of(ctx).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const IrlAppScreen()),
            (route) => false,
          ),
        );
  }

  Account get getAccount => _userData;
}
