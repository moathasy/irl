import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class ThirdSalon extends StatefulWidget {


  @override
  State<ThirdSalon> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<ThirdSalon> {
  // list of photos to display (including urls and captions)
  final List<Map<String, dynamic>> _photos = [
    {
      "url":
      "https://bondsbarbershop.co.uk/media/Locations/Bournemouth/default/bournemouth-chairs.jpg",
      "caption": "Hair Care",
    },
    {
      "url":
      "https://kingsbarberclub.co.uk/wp-content/uploads/2020/12/slider-2.png",
      "caption": "Hair Styling"
    },
    {
      "url":
      "https://www.thekickassentrepreneur.com/wp-content/uploads/2021/10/shaving-a-customer-inside-a-barber-shop-scaled.jpeg",
      "caption": "Hair Cut"
    },{
      "url":
      "https://the-riotact.com/wp-content/uploads/2001/04/The-Best-Barbers-In-Queanbeyan.jpg",
      "caption": "Hair Coloring"
    },
  ];

  Map<String, dynamic>? _selectedPhoto;
  bool agree = false;
  bool yes = false;
  bool irl=false;
  bool hey=false;
  bool hi =false;
  bool non =false;
  bool lol =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('BOND\'S BARBER SHOP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.brown.shade200,
              alignment: Alignment.center,
              child: RotatedBox(
                quarterTurns: -45,
                // implement the ListWheelScrollView
                child: ListWheelScrollView(
                  itemExtent: MediaQuery.of(context).size.width * 0.9,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      _selectedPhoto = _photos[index];
                    });
                  },
                  // use the _photos list as children
                  children: _photos
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
            Column(children: [
              Text('',style: TextStyle(),),
            ],),
            // display the caption of the selected photo
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Center(
                  child: Text(
                    _selectedPhoto == null
                        ? _photos[0]['caption']
                        : _selectedPhoto!['caption'],
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value ?? false;
                    });
                  },),
                title: Text('Standard Beard',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('30 min',style: TextStyle(fontSize: 15),),
                trailing: Text('18\$',style: TextStyle(fontSize: 17),),

              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: yes,
                  onChanged: (value) {
                    setState(() {
                      yes = value ?? false;
                    });
                  },),
                title: Text('Waxing',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('15 min',style: TextStyle(fontSize: 15),),
                trailing: Text('12\$',style: TextStyle(fontSize: 17),),

              ),ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: irl,
                  onChanged: (value) {
                    setState(() {
                      irl = value ?? false;
                    });
                  },),
                title: Text('Grey Blending Natural',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('20 min',style: TextStyle(fontSize: 15),),
                trailing: Text('20\$',style: TextStyle(fontSize: 17),),

              ),ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: hey,
                  onChanged: (value) {
                    setState(() {
                      hey = value ?? false;
                    });
                  },),
                title: Text('Shaving',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('25 min',style: TextStyle(fontSize: 15),),
                trailing: Text('25\$',style: TextStyle(fontSize: 17),),

              ),ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: hi,
                  onChanged: (value) {
                    setState(() {
                      hi = value ?? false;
                    });
                  },),
                title: Text('Hot Lather',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('10 min',style: TextStyle(fontSize: 15),),
                trailing: Text('10\$',style: TextStyle(fontSize: 17),),

              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: non,
                  onChanged: (value) {
                    setState(() {
                      non = value ?? false;
                    });
                  },),
                title: Text('Kids Haircut',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('15 min',style: TextStyle(fontSize: 15),),
                trailing: Text('15\$',style: TextStyle(fontSize: 17),),

              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.brown.shade700, width: 1),
                ),
                iconColor: Colors.brown.shade800,
                leading: Checkbox(value: lol,
                  onChanged: (value) {
                    setState(() {
                      lol = value ?? false;
                    });
                  },),
                title: Text('Hot Lather',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('15 min',style: TextStyle(fontSize: 15),),
                trailing: Text('20\$',style: TextStyle(fontSize: 17),),

              ),
            ],
            ),
            SizedBox(height: 33,),
            Padding(
              padding: const EdgeInsets.only(left: 180.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 2, color: Colors.black),
                    primary: Colors.brown,
                    padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30)),
                child: const Text(
                  'Book Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}