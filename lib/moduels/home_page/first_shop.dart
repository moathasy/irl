import 'package:flutter/material.dart';

class FirstShop extends StatefulWidget{

  @override
  State<FirstShop> createState() => _FirstShopState();
}

class _FirstShopState extends State<FirstShop> {
  final List<Map<String, dynamic>> _photos = [
    {
      "url":
      "https://agelessglowskin.com/wp-content/uploads/2021/07/Packaging-and-Storage-Affects-Oxidation.jpg",
      "caption": "Skin Care",
    },
    {
      "url":
      "https://verilymag.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_768/MTQzNzQ0MjAxNDE3MzAzOTU4/adobestock_120574355jpeg.jpg",
      "caption": "Makeup Brushes"
    },
    {
      "url":
      "https://antlawyers.vn/wp-content/uploads/Untitled-design-32.jpg",
      "caption": "Makeup"
    }, {
      "url":
      "https://c.perfumesclub.com/nuevapresentacion/marcas/balmain-paris-hair-couture.jpg",
      "caption": "Shampoo"
    },
  ];

  Map<String, dynamic>? _selectedPhoto;
  bool agree = false;
  bool yes = false;
  bool irl = false;
  bool hey = false;
  bool hi = false;
  bool non = false;
  bool lol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('JOHN\'S BARBER SHOP',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.brown),))),
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
                  itemExtent: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      _selectedPhoto = _photos[index];
                    });
                  },
                  // use the _photos list as children
                  children: _photos
                      .map((photo) =>
                      RotatedBox(
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
            SizedBox(height: 20,),
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
                    style: const TextStyle(fontSize: 30),overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(children: [
              Container(
                height: 200,
                child: ListTile(
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
                  title: Text('Hyaluronic Sea Serum',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                  subtitle: Text('88 JOD', style: TextStyle(fontSize: 15),),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(800),
                    child: Image(image: AssetImage('assets/images/osea-hyaluronic-sea-serum_front_photo_original.jpeg'),
                   height: 100,
                    ),
                  ),
                ),
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
                title: Text('Royal Shave/Royal Beard',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('20 min', style: TextStyle(fontSize: 15),),
                trailing: Text('10\$', style: TextStyle(fontSize: 17),),

              ), ListTile(
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
                title: Text('Hair Coloring',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('20 min', style: TextStyle(fontSize: 15),),
                trailing: Text('17\$', style: TextStyle(fontSize: 17),),

              ), ListTile(
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
                title: Text('Hair Blowdry',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('10 min', style: TextStyle(fontSize: 15),),
                trailing: Text('8\$', style: TextStyle(fontSize: 17),),

              ), ListTile(
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
                title: Text('Hair Tonic',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('10 min', style: TextStyle(fontSize: 15),),
                trailing: Text('10\$', style: TextStyle(fontSize: 17),),

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
                title: Text('Kids Haircut,Under 14',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('20 min', style: TextStyle(fontSize: 15),),
                trailing: Text('15\$', style: TextStyle(fontSize: 17),),

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
                title: Text('Beard Trim',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                subtitle: Text('15 min', style: TextStyle(fontSize: 15),),
                trailing: Text('12\$', style: TextStyle(fontSize: 17),),

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

