import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irl_graduation_project/shared/components/components.dart';

import '../home_page/home_screen.dart';
import 'signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar( elevation: 13.0,
      //   // this need to be set
      //   backgroundColor: Colors.transparent,
      //   // create gradient background color
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.centerLeft,
      //           end: Alignment.centerRight,
      //           colors: [
      //             Colors.brown.shade600.withOpacity(0.5),
      //             Colors.white.withOpacity(0.4),
      //             Colors.brown.shade600.withOpacity(0.7)
      //           ]),
      //     ),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.arrow_back),
      //   ),
      //
      //
      //
      // ),

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
              // TextFormField(
              //   controller: emailController,
              //   keyboardType: TextInputType.emailAddress,
              //   onFieldSubmitted: (String value ){   //print بعد ال submit
              //
              //     print(value);
              //   },
              //   onChanged: (String value){  //print حرف حرف
              //     print(value);
              //   },
              //   decoration: const InputDecoration(
              //       labelText: 'Email address ',
              //       border: OutlineInputBorder(),
              //       prefixIcon: Icon(
              //         Icons.email,)
              //   ),
              // ),
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
                height: 30.0,
              ),
              // TextFormField(
              //   controller: passwordController,
              //   keyboardType: TextInputType.visiblePassword,
              //   onFieldSubmitted: (String value ){   //print بعد ال submit
              //
              //     print(value);
              //   },
              //   onChanged: (String value){  //print حرف حرف
              //     print(value);
              //   },
              //   decoration: const InputDecoration(
              //       labelText: 'password ',
              //       border: OutlineInputBorder(),
              //       prefixIcon: Icon(
              //         Icons.lock,),
              //       suffix: Icon(
              //           Icons.remove_red_eye_outlined)
              //   ),
              // ),
              defaultFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                validator: (String value) {
                  if (value.isEmpty) {
                    return "password cant be null";
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
                onSubmit: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.brown.shade400,
                child: MaterialButton(
                  onPressed: () {
                    //عشان يمسكني الباسورد والايميل مع بعض بعد ال login

                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    });
                  },
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
    );
  }
}
