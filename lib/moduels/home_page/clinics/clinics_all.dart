import 'package:flutter/material.dart';

class ClinicsAll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
              'CLINICS',
              style: TextStyle(
                fontFamily: "Lora",
                color: Colors.brown,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
          ),

        ),
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
                      'https://thumbs.dreamstime.com/z/beauty-clinic-logo-spa-treatment-aesthetic-represent-shiny-good-shape-luxury-188443622.jpg',
                    ),

                    radius: 30,
                  ),
                  title: const Text('ROZ\'S BEAUTY CLINIC',

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
                    onPressed: (){},
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssBBDIBlvVy8A3cRuM0MyIYHMPmB2ZY5umLmIBUf0TmCzQjsCTOPpzbW9bRrssJk1iJM&usqp=CAU'),radius: 30,),
                  title: const Text(
                      'WELLWOMEN CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
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
                        'https://i.pinimg.com/236x/e2/89/4c/e2894c1e02f85d723ee350bce697eda1.jpg'),
                    radius: 30,),
                  title: const Text(
                      'SMILES CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJFIJl4JrO0UQQ39CglRZ8FD0yQkMvpgqC_n7mF949WG2X277VMUBRBX_wKMpLSqTht6M&usqp=CAU'),
                    radius: 30,),
                  title: const Text(
                      'SKIN LASER POINT',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
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
                        'https://cdn3.vectorstock.com/i/1000x1000/88/62/olive-beauty-clinic-logo-design-vector-25898862.jpg'),
                    radius: 30,),
                  title: const Text(
                      'BAEUTY CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
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
                        'https://dcassetcdn.com/design_img/2270129/609639/609639_11942323_2270129_ac586107_image.png'),
                    radius: 30,),
                  title: const Text(
                      'FLAWLESS YOU',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  contentPadding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.brown, width: 4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  iconColor: Colors.brown.shade400,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-vector/dental-logo-design-creative-dentist-logo-creative-dental-clinic-logo-dental-vector_227744-831.jpg?w=2000'),
                    radius: 30,),
                  title: const Text(
                      'DENTAL CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  contentPadding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.brown, width: 4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  iconColor: Colors.brown.shade400,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://img0cf.b8cdn.com/images/logo/18/2096618_logo_1638949833_n.png'),
                    radius: 30,),
                  title: const Text(
                      'PURE CARE CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  contentPadding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.brown, width: 4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  iconColor: Colors.brown.shade400,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.shutterstock.com/image-vector/women-health-logo-template-design-260nw-1157911546.jpg'),
                    radius: 30,),
                  title: const Text(
                      'DIVA CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  contentPadding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.brown, width: 4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  iconColor: Colors.brown.shade400,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGUdg4pF2ceoN6KUAclwAtrwklFxthMC7A1zeX9sRvcwxz2HRNj5FJmXQcwGH1KEECXps&usqp=CAU'),
                    radius: 30,),
                  title: const Text(
                      ' CARE CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  contentPadding: EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.brown, width: 4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  iconColor: Colors.brown.shade400,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.squarespace-cdn.com/content/v1/56d635cd7da24fcf83f147fc/1458009666704-W7GABE2HZ6SWGCWVLTNL/YSC_Logo2.jpg'),
                    radius: 30,),
                  title: const Text(
                      'BE YOU CLINIC',
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 18),
                      overflow: TextOverflow.visible),
                  style: ListTileStyle.drawer,
                  subtitle: const Text('Find beauty with us ...',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),

            ],
          ),

        ),
      ),
    );
  }
}