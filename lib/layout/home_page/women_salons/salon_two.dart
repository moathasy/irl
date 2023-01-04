import 'package:flutter/material.dart';

class SalonTwo extends StatefulWidget {
  @override
  State<SalonTwo> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SalonTwo> {
// list of photos to display (including urls and captions)
  final List<Map<String, dynamic>> _photos = [
    {
      "url":
          "https://us.123rf.com/450wm/alexkoral/alexkoral2010/alexkoral201000115/alexkoral201000115.jpg?ver=6",
      "caption": "Coiffuring",
    },
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9HgMARLh1WgVOcJ_gUL3gOaB-MzQKgmjnLw&usqp=CAU",
      "caption": " Lash extensions"
    },
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk6n703-W3fGhFhofeuzrRwn2gEe4x6DGBTQ&usqp=CAU",
      "caption": "Microneedling"
    },
    {
      "url":
          "https://cdn1.dermoi.com/wordpress/wp-content/uploads/2021/09/11130302/dermaplaning-5.jpg",
      "caption": "Dermaplaning"
    },
  ];

  Map<String, dynamic>? _selectedPhoto;
  bool pp = false;
  bool oo = false;
  bool ii = false;
  bool uu = false;
  bool yy = false;
  bool tt = false;
  bool rr = false;
  bool ee = false;
  bool ww = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ]),
            ),
          ),
          title: const Center(
              child: Text(
            'R&T SALON',
            style: TextStyle(
                fontFamily: "Lora",
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.brown),
          ))),
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
                  itemExtent: MediaQuery.of(context).size.width * 1.0,
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
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Center(
                  child: Text(
                    _selectedPhoto == null
                        ? _photos[0]['caption']
                        : _selectedPhoto!['caption'],
                    style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'lora',
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 0.9),
                  ),
                  // iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: pp,
                    onChanged: (value) {
                      setState(() {
                        pp = value ?? false;
                      });
                    },
                  ),
                  title: const Text(
                    'Manual Extractions ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '10\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: oo,
                    onChanged: (value) {
                      setState(() {
                        oo = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Enzyme Painless Peels',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '13\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: ii,
                    onChanged: (value) {
                      setState(() {
                        ii = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Hydro Jelly Mask',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '17\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: uu,
                    onChanged: (value) {
                      setState(() {
                        uu = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Hybrids Lash Extensions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '10 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '20\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: yy,
                    onChanged: (value) {
                      setState(() {
                        yy = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Mega Lash Extensions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '10 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '10\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: tt,
                    onChanged: (value) {
                      setState(() {
                        tt = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Classic Lash Extensions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '15\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: rr,
                    onChanged: (value) {
                      setState(() {
                        rr = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Steam & Cleanse',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '15\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: ee,
                    onChanged: (value) {
                      setState(() {
                        ee = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Manual Extractions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '15\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.brown.shade700, width: 1),
                  ),
                  iconColor: Colors.brown.shade800,
                  leading: Checkbox(
                    value: ww,
                    onChanged: (value) {
                      setState(() {
                        ww = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    'Hydro Jelly Mask',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    '20 min',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text(
                    '15\$',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 2, color: Colors.brown),
                    primary: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30)),
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
