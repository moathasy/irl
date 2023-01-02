import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_eight.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_five.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_four.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_nine.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_one.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_seven.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_six.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_ten.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_three.dart';
import 'package:irl_graduation_project/moduels/home_page/women_salons/salon_two.dart';


class Women extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 13),
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.etsystatic.com/24813456/r/il/bdf4f1/4000647506/il_fullxfull.4000647506_okdr.jpg',
                  ),

                  radius: 30,
                ),
                title: const Text('ROZA BEAUTY SALON',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text(
                  'Find beauty with us ...',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 15),
                ),
                trailing: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SalonOne()));
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/002/459/341/small/hair-woman-and-face-logo-and-symbols-free-vector.jpg'),radius: 30,),
                title: const Text(
                    'R&T SALON',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonTwo()));
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://t4.ftcdn.net/jpg/03/63/90/29/360_F_363902960_P51Ursw5bJPCnFNEFj4n7bHmCXz6STbh.jpg'),
                  radius: 30,),
                title: const Text(
                    'HAIR SALON',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonThree()));
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hair-logo-design-template-3f1ab60dd265abc9e7eaab9352f5c5c9_screen.jpg?ts=1602124776'),
                  radius: 30,),
                title: const Text(
                    'HAIR BY LELANI',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonFour()));
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9dxkMCm620gw3cAWNqWh7EFhuawC6FaiBMQ&usqp=CAU'),
                  radius: 30,),
                title: const Text(
                    'BEAUTY CENTER',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonFive()));
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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/beauty-hair-care-logo-design_7518-113.jpg?w=2000'),
                  radius: 30,),
                title: const Text(
                    'BEAUTY HAIR',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonSix(),));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                )
            ),
            SizedBox(height: 15),
            ListTile(
                contentPadding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.brown, width: 4),
                  borderRadius: BorderRadius.circular(15),
                ),
                iconColor: Colors.brown.shade400,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/gold-salon-logo-design-template-f97a5f6a58afa5eb34712265bd8ccac0_screen.jpg?ts=1646827491'),
                  radius: 30,),
                title: const Text(
                    'SUNA SALON',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonSeven(),));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                )
            ),
            SizedBox(height: 15),
            ListTile(
                contentPadding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.brown, width: 4),
                  borderRadius: BorderRadius.circular(15),
                ),
                iconColor: Colors.brown.shade400,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://graphiccloud.net/wp-content/uploads/2019/05/Editable-Salon-Logo-Design-1200x900.jpg'),
                  radius: 30,),
                title: const Text(
                    'LOOKS AND STYLES',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SalonEight(),));},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                )
            ),
            SizedBox(height: 15),
            ListTile(
                contentPadding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.brown, width: 4),
                  borderRadius: BorderRadius.circular(15),
                ),
                iconColor: Colors.brown.shade400,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.seekpng.com/png/detail/425-4259667_gents-salon-logo-png-download-beauty-parlour-icon.png'),
                  radius: 30,),
                title: const Text(
                    'YOUR LOOKS',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonNine(),));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                )
            ),
            SizedBox(height: 15),
            ListTile(
                contentPadding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.brown, width: 4),
                  borderRadius: BorderRadius.circular(15),
                ),
                iconColor: Colors.brown.shade400,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.designmantic.com/images/industry/beauty/dm-beauty-logo-13.png'),
                  radius: 30,),
                title: const Text(
                    'VA MAKEUP',
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 18),
                    overflow: TextOverflow.visible),
                style: ListTileStyle.drawer,
                subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SalonTen(),));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}