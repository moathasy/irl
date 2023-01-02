import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class FiveSalon extends StatefulWidget {


  @override
  State<FiveSalon> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<FiveSalon> {
  // list of photos to display (including urls and captions)
  final List<Map<String, dynamic>> _photos = [
    {
      "url":
      "https://www.timeoutdubai.com/cloud/timeoutdubai/2021/09/11/vwIrTYs9-barbers-in-dubai.jpg",
      "caption": "Hair Care",
    },
    {
      "url":
      "https://www.epos.com.sg/wp-content/uploads/2022/07/Best-Barber-Shops-in-Singapore-Cover-Image-Opt.jpg",
      "caption": "Hair Styling"
    },
    {
      "url":
      "https://nationaltoday.com/wp-content/uploads/2021/05/Barber-Mental-Health-Awareness-.jpg",
      "caption": "Hair Cut"
    },{
      "url":
      "https://www.oneeducation.org.uk/wp-content/uploads/2020/08/How-to-become-a-barber.png",
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
      appBar: AppBar(title: Center(child: const Text('SPARTAN BARBER SHOP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown),))),
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
                title: Text(' Men\'s Haircut',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('30 min',style: TextStyle(fontSize: 15),),
                trailing: Text('25\$',style: TextStyle(fontSize: 17),),

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
                title: Text('Hair Design',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('20 min',style: TextStyle(fontSize: 15),),
                trailing: Text('15\$',style: TextStyle(fontSize: 17),),

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
                title: Text('Hair Coloring(Head)',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
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
                title: Text('Hair Coloring(Beard)',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('10 min',style: TextStyle(fontSize: 15),),
                trailing: Text('15\$',style: TextStyle(fontSize: 17),),

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
                title: Text('Men\'s Hair Linig',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('15 min',style: TextStyle(fontSize: 15),),
                trailing: Text('12\$',style: TextStyle(fontSize: 17),),

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
                subtitle: Text('20 min',style: TextStyle(fontSize: 15),),
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
                title: Text('Beards (full)',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                subtitle: Text('15 min',style: TextStyle(fontSize: 15),),
                trailing: Text('15\$',style: TextStyle(fontSize: 17),),

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