import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:irl/global/app_constants.dart';
import 'package:irl/global/app_strings.dart';
import 'package:irl/layout/irl_login/login_page.dart';
import 'package:irl/models/user.dart';
import 'package:irl/shared/dialog/loading_screen_dialog.dart';

import '../../shared/components/components.dart';
import '../irl_app/irl_app.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final loadingIndicator = LoadingScreen.instance();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final phone = phoneController.text.trim();
    final name = nameController.text.trim();
    loadingIndicator.show(context: context, content: "loading");
    if (!_formKey.currentState!.validate()) {
      loadingIndicator.hide();
      return;
    } else {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email,
          password: password,
        )
            .then((value) async {
          if (value.user != null) {
            final userData = Account(
                id: value.user!.uid, name: name, email: email, phone: phone);
            await FirebaseFirestore.instance
                .collection(AppStrings.userCollection)
                .doc(value.user!.uid)
                .set(userData.toJson())
                .then((value) {
              loadingIndicator.hide();
              return Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const IrlAppScreen()),
                  (route) => false);
            });
          } else {
            Fluttertoast.showToast(msg: 'error');
          }
        });
        loadingIndicator.hide();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          log('The password provided is too weak.');
          Fluttertoast.showToast(msg: 'The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          log('The account already exists for that email.');
          Fluttertoast.showToast(
              msg: 'The account already exists for that email.');
        }
        loadingIndicator.hide();
      } catch (e) {
        log(e.toString());
        Fluttertoast.showToast(msg: "error has ocurred");
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'SIGN UP ',
                      style: TextStyle(
                        fontFamily: "Lora",
                        color: Colors.brown.shade400,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  defaultFormField(
                    controller: nameController,
                    type: TextInputType.name,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Name cant be null";
                      } else {
                        return null;
                      }
                    },
                    label: "Name",
                    prefix: Icons.person,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 10,
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
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultFormField(
                    controller: phoneController,
                    type: TextInputType.number,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Phone cant be null";
                      } else {
                        return null;
                      }
                    },
                    label: "Phone Number",
                    prefix: Icons.phone,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 10,
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
                    suffixPressed: () => setState(() {
                      isPassword = !isPassword;
                    }),
                    suffix:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: AppConstants.customTheme!.primaryColor,
                    child: MaterialButton(
                      onPressed: _onSave,
                      child: const Text(
                        'SIGN UP ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    ),
                    child: Text(
                      "${AppStrings.youHaveAnAccount}    ${AppStrings.logIn}",
                      style: TextStyle(
                          color: AppConstants.customTheme!.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
