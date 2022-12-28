import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/home_page/clinics/clinics_all.dart';
import 'package:irl_graduation_project/moduels/home_page/cosmatics/cosmatics_page.dart';
import 'package:irl_graduation_project/moduels/home_page/men_women.dart';
import 'package:irl_graduation_project/moduels/search_page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  // final FirebaseAuth auth = FirebaseAuth.instance;
  // late final User user;
  // late final uid;
  // void inputData() {
  //    user = auth.currentUser!;
  //    uid = user.uid;
  //   // here you write the codes to input the data into firestore
  // }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(elevation: 20,

        // actions: [
        //   Text('${uid}'),
        //
        //
        //
        // ],
      ),
      body: Column(
        children: [
        Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 170,
                  child: GridTile(
                    child:
                    Image(
                      image: AssetImage('assets/images/salons.jpg'),
                      fit: BoxFit.fill,
                    ),
                    footer: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>MenWomen()));
                      },
                      child: Container(
                        // You can use GridTileBar instead
                        child: Text(
                          'Salons',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 170,
                child: GridTile(
                  child:
                  Image(
                    image: AssetImage('assets/images/clinics.jpg'),
                   fit: BoxFit.fill,
                   ),
                  footer: MaterialButton(
                    onPressed: () { 
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ClinicsAll()));
                    },
                    child: Container(
                      // You can use GridTileBar instead
                      child: Text(
                        'Clinics',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 170,
                  child: GridTile(
                    child:
                    Image(
                      image: AssetImage('assets/images/cusma.jpg'),
                      fit: BoxFit.fill,
                    ),
                    footer: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Cosmatics()));
                      },
                      child: Container(
                        // You can use GridTileBar instead
                        child: Text(
                          'Cosmatics',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                        color: Colors.white54,
                      ),
                    ),
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
