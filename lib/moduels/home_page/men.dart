import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/eight_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/first_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/five_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/fourth_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/nine_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/second_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/seven_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/six_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/ten_salon.dart';
import 'package:irl_graduation_project/moduels/home_page/men_salons/third_salon.dart';

class Men extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
    // implement add ListView that contains multiple ListTiles
    child: ListView(
    children: [
      ListTile(
        contentPadding: EdgeInsets.all(14),
    shape: RoundedRectangleBorder(
    side: const BorderSide(color: Colors.brown, width: 4),
      borderRadius: BorderRadius.circular(15),
    ),
    iconColor: Colors.brown.shade400,
    leading: CircleAvatar(backgroundImage: AssetImage('assets/images/JOHNS.webp'),radius: 30,),
    title: const Text('JOHN\'S BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
    subtitle: const Text('High standards are on us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
    trailing: IconButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstSalon(),));
      },
      icon: const Icon(
        Icons.play_arrow,
        size: 40,
      ),
    )
    ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage:AssetImage('assets/images/adam.png'),radius: 30,),
          title: const Text('ADAM BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('Let your hair do the talking',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/bond.jpg'),radius: 30,),
          title: const Text('BOND BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('The best haircut you\'ll ever get!',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage:AssetImage('assets/images/mountain.jpg'),radius: 30,),
          title: const Text('MOUNTAIN BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('We give men the beards they want',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/spartan.jpg'),radius: 30,),
          title: const Text('SPARTAN BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('We can help you look your best',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FiveSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/partners.webp'),radius: 30,),
          title: const Text('PARTNERS BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('You can\'t judge a book by its cover',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SixSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/MMM.webp'),radius: 30,),
          title: const Text('ALDENIRE BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('You don\'t just get a closer shave!',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SevenSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),

      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/brothers.jpg'),radius: 30,),
          title: const Text('BROTHERS BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('The Best Little Hair House in Town',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EightSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),

      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/nerd.jpg'),radius: 30,),
          title: const Text('NERD HEAD BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('Because You\'re Worth It ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NineSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
      SizedBox(height: 15,),
      ListTile(
          contentPadding: EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.brown, width: 4),
            borderRadius: BorderRadius.circular(15),
          ),
          iconColor: Colors.brown.shade400,
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/perfect.jpg'),radius: 30,),
          title: const Text('PERBAR BARBER SHOP',style: TextStyle(fontSize: 18),overflow: TextOverflow.visible),style: ListTileStyle.drawer,
          subtitle: const Text('We always do the best we can ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          trailing: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TenSalon()));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 40,
            ),
          )
      ),
    ],
    ),),
    );
  }
}