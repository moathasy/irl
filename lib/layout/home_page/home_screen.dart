import 'package:flutter/material.dart';

import 'clinics/clinics_all.dart';
import 'cosmetics/cosmetics_page.dart';
import 'men_women.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      appBar: AppBar(
        elevation: 20,

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
                    footer: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenWomen(),
                          ),
                        );
                      },
                      child: Container(
                        // You can use GridTileBar instead
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 0,
                        ),
                        color: Colors.white54,
                        // You can use GridTileBar instead
                        child: const Text(
                          'Salons',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/salons.jpg'),
                      fit: BoxFit.fill,
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
                    footer: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClinicsAll(),
                          ),
                        );
                      },
                      child: Container(
                        // You can use GridTileBar instead
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 0,
                        ),
                        color: Colors.white54,
                        // You can use GridTileBar instead
                        child: const Text(
                          'Clinics',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/clinics.jpg'),
                      fit: BoxFit.fill,
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
                    footer: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cosmetics(),
                          ),
                        );
                      },
                      child: Container(
                        // You can use GridTileBar instead
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 0,
                        ),
                        color: Colors.white54,
                        // You can use GridTileBar instead
                        child: const Text(
                          'Cosmatics',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/cusma.jpg'),
                      fit: BoxFit.fill,
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
