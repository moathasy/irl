import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import 'login_page.dart';
import 'logout_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 13.0,
        // this need to be set
        backgroundColor: Colors.transparent,
        // create gradient background color
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.brown.shade600.withOpacity(0.5),
                Colors.white.withOpacity(0.4),
                Colors.brown.shade600.withOpacity(0.7)
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://t4.ftcdn.net/jpg/02/06/94/21/360_F_206942118_LewuOI1QEbsp9NBI8f4ECCf3Lff0He1S.jpg',
            ),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'SIGNUP ',
                  style: TextStyle(
                    fontFamily: "Lora",
                    color: Colors.brown.shade400,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Email cant be null";
                  } else {
                    return null;
                  }
                },
                label: "Email Address",
                prefix: Icons.email,
                onSubmit: (String value) {
                  print(value);
                },
                isPassword: false,
              ),
              const SizedBox(
                height: 30,
              ),
              defaultFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "password cant be null";
                  }
                },
                label: "Password",
                prefix: Icons.lock_rounded,
                isPassword: isPassword,
                suffixPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                onSubmit: (String value) {
                  print(value);
                },
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () async {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) async {
                      await FirebaseFirestore.instance
                          .collection('user')
                          .doc(value.user!.uid)
                          .set({'email': emailController});
                      print('created new account');
                      if (!mounted) return;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogoutPage(),
                        ),
                      );
                    }).onError((error, stackTrace) {
                      print('Error ${error.toString()}');
                    }); //عشان يمسكني الباسورد والايميل مع بعض بعد ال login
                  },
                  child: const Text(
                    'SIGN UP ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
