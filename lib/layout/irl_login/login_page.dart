import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:irl/layout/irl_app/irl_app.dart';
import 'package:irl/shared/components/components.dart';

import '../../shared/dialog/loading_screen_dialog.dart';
import 'sign_up_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loadingIndicator = LoadingScreen.instance();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    loadingIndicator.show(context: context, content: "loading");
    if (!_formKey.currentState!.validate()) {
      loadingIndicator.hide();
      Fluttertoast.showToast(msg: "please enter data ");
      return;
    } else {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passwordController.text.trim())
            .then((value) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (_) => const IrlAppScreen(),
              ),
              (route) => false);
        });
        loadingIndicator.hide();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          log('No user found for that email.');
          Fluttertoast.showToast(msg: 'No user found for that email.');
        } else if (e.code == 'wrong-password') {
          log('Wrong password provided for that user.');
          Fluttertoast.showToast(msg: 'Wrong password provided for that user.');
        }
        loadingIndicator.hide();
      }
    }
    loadingIndicator.hide();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login1.jpg'),
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
                    'LOGIN ',
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
                    if (value.isEmpty || !value.contains("@")) {
                      return "Enter Valid Email Address ";
                    } else {
                      return null;
                    }
                  },
                  label: "Email Address",
                  prefix: Icons.email,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "password cant be empty";
                    } else {
                      return null;
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
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.brown.shade400,
                  child: MaterialButton(
                    onPressed: _onSave,
                    child: const Text(
                      'LOGIN ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Register Now!',
                        style: TextStyle(
                          color: Colors.brown.shade600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
