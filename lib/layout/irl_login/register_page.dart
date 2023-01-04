// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:irl_graduation_project/moduels/home_page/home_screen.dart';
//
// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});
//
//
//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   var emailController =TextEditingController();
//
//   var passwordController =TextEditingController();
//   // the current step
//   int _currentStep = 0;
//
//   // Determines whether the stepper's orientation is vertical or horizontal
//   // This variable can be changed by using the switch below
//   bool _isVerticalStepper = true;
//
//   // This function will be triggered when a step is tapped
//   _stepTapped(int step) {
//     setState(() => _currentStep = step);
//   }
//
//   // This function will be called when the continue button is tapped
//   _stepContinue() {
//     _currentStep < 2 ? setState(() => _currentStep += 1) : null;
//   }
//
//   // This function will be called when the cancel button is tapped
//   _stepCancel() {
//     _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar( elevation: 13.0,
//         // this need to be set
//         backgroundColor: Colors.transparent,
//         // create gradient background color
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [
//                   Colors.brown.shade600.withOpacity(0.5),
//                   Colors.white.withOpacity(0.4),
//                   Colors.brown.shade600.withOpacity(0.7)
//                 ]),
//           ),
//         ),
//         leading: IconButton(onPressed: (){
//           Navigator.pop(context);
//         },
//           icon: Icon(Icons.arrow_back),),
//         title:  Text('IRL.com',
//           style: TextStyle(fontFamily: "Lora",),),
//
//
//
//       ),
//       body: Column(
//         children: [
//           // Controls the stepper orientation
//           SwitchListTile(
//               title: const Text(
//                 'Vertical Stepper?',
//                 style: TextStyle(
//                   fontFamily: "Lora",),),
//               subtitle: const Text('vertical/horizontal direction',),
//               value: _isVerticalStepper,
//               onChanged: (_) {
//                 setState(() {
//                   _isVerticalStepper = !_isVerticalStepper;
//                 });
//               }),
//           const Divider(
//             thickness: 2,
//             height: 30,
//           ),
//           Expanded(
//             // the Stepper widget
//             child: Stepper(
//               // vertical or horizontial
//               type: _isVerticalStepper
//                   ? StepperType.vertical
//                   : StepperType.horizontal,
//               physics: const ScrollPhysics(),
//               currentStep: _currentStep,
//               onStepTapped: (step) => _stepTapped(step),
//               onStepContinue: _stepContinue,
//               onStepCancel: _stepCancel,
//               steps: [
//                 // The first step: Name
//                 Step(
//
//                   title: const Text('Email'
//                     ,style: TextStyle(fontFamily: "Lora",),),
//                   content: Column(
//                     children: [
//                       TextFormField(
//                         decoration:
//                         const InputDecoration(labelText: 'Your Email',
//
//                         )
//                         ,
//                       ),
//                     ],
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 0
//                       ? StepState.complete
//                       : StepState.disabled,
//                 ),
//                 // The second step: Phone number
//                 Step(
//                   title: const Text('Password',style: TextStyle(fontFamily: "Lora",),),
//                   content: Column(
//                     children: [
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             labelText: 'Your Password'),
//                       ),
//                     ],
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 1
//                       ? StepState.complete
//                       : StepState.disabled,
//                 ),
//                 // The third step: Verify phone number
//                 Step(
//                   title: const Text('User Name',style: TextStyle(fontFamily: "Lora",),),
//                   content: Column(
//                     children: <Widget>[
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             labelText: 'Your User Name '),
//                       ),
//                     ],
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 2
//                       ? StepState.complete
//                       : StepState.disabled,
//                 ),
//                 Step(
//                   title: const Text('City',style: TextStyle(fontFamily: "Lora",),),
//                   content: Column(
//                     children: <Widget>[
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             labelText: 'Verification code'),
//                       ),
//                     ],
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 2
//                       ? StepState.complete
//                       : StepState.disabled,
//                 ),
//                 Step(
//                   title: const Text('Phone',style: TextStyle(fontFamily: "Lora",),),
//                   content: Column(
//                     children: <Widget>[
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             labelText: 'Your Phone'),
//                       ),
//                     ],
//                   ),
//                   isActive: _currentStep >= 0,
//                   state: _currentStep >= 2
//                       ? StepState.complete
//                       : StepState.disabled,
//                 ),
//
//
//               ],
//             ),
//           ),
//           // Container(
//           //   width: double.infinity,
//           //   color: Colors.blue,
//           //   child: MaterialButton(onPressed: (){
//           //     FirebaseAuth.instance.createUserWithEmailAndPassword
//           //       (email: emailController.text, password: passwordController.text).then((value){
//           //       print('created new account');
//           //       Navigator.push(context,
//           //           MaterialPageRoute(builder: (context)=> HomeScreen()));
//           //
//           //     }).onError((error, stackTrace){
//           //       print('Error ${error.toString()}');
//           //     });                                          //عشان يمسكني الباسورد والايميل مع بعض بعد ال login
//           //
//           //   },
//           //     child: const Text('SIGN UP ',
//           //       style: TextStyle(
//           //           color: Colors.white
//           //       ),),
//           //   ),
//           // ),
//
//         ],
//       ),
//     );
//   }
// }
