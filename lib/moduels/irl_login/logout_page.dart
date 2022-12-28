import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/irl_login/login_page.dart';

class LogoutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: MaterialButton(onPressed: (){
      FirebaseAuth.instance.signOut().then((value) {
          print('sign out');
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }                            //عشان يمسكني الباسورد والايميل مع بعض بعد ال login

      );},
          child: const Text('SIGN OUT ',
            style: TextStyle(
                color: Colors.white
            ),),
      ),
        ),
    ),
    );}

}
