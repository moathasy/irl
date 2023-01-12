import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:irl/layout/home_page/salons_category/salons_details/widgets/salon_details_widget.dart';
import 'package:irl/layout/irl_login/login_page.dart';
import 'package:irl/models/salon_model.dart';

import '../../../schedule/schedule_screen.dart';

class SalonsDetailsScreen extends StatefulWidget {
  final Salon salon;
  const SalonsDetailsScreen({super.key, required this.salon});

  @override
  State<SalonsDetailsScreen> createState() => _SalonsDetailsScreenState();
}

class _SalonsDetailsScreenState extends State<SalonsDetailsScreen> {
  Salon? salon;
  List<SalonTask> tasksList = [];
  List<Map<String, dynamic>>? _photos;
  User? uAccount = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    salon = widget.salon;
    _photos = salon!.photosList;
    super.initState();
  }

  void getList(SalonTask task) {
    tasksList.add(task);
    log("this task add ${task.taskName}");
  }

  Map<String, dynamic>? _selectedPhoto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            salon!.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.brown.shade200,
            alignment: Alignment.center,
            child: RotatedBox(
              quarterTurns: -45,
              // implement the ListWheelScrollView
              child: ListWheelScrollView(
                itemExtent: MediaQuery.of(context).size.width * 0.9,
                onSelectedItemChanged: (index) {
                  setState(
                    () {
                      _selectedPhoto = _photos![index];
                    },
                  );
                },
                // use the _photos list as children
                children: _photos!
                    .map((photo) => RotatedBox(
                          key: ValueKey(photo["url"]),
                          quarterTurns: 45,
                          child: Image.network(
                            photo["url"],
                            width: double.infinity,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Center(
                child: Text(
                  _selectedPhoto == null
                      ? _photos![0]['caption']
                      : _selectedPhoto!['caption'],
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: salon!.salonTask.length,
              itemBuilder: (context, index) => SalonDetailsWidget(
                salonTask: salon!.salonTask[index],
                getTask: getList,
              ),
            ),
          ),
          Container(
            color: Colors.brown.shade100,
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (uAccount != null)
                  ElevatedButton(
                    onPressed: () {
                      if (tasksList.isNotEmpty) {
                        salon!.salonTask = tasksList;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ScheduleScreen(
                              salon: salon!,
                            ),
                          ),
                        );
                      } else {
                        Fluttertoast.showToast(msg: "please select task");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 2, color: Colors.black),
                        backgroundColor: Colors.brown,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30)),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                if (uAccount == null)
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                        (route) => false),
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 2, color: Colors.black),
                        backgroundColor: Colors.brown,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30)),
                    child: const Text(
                      'LogIn First',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
