import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/salons_category/wemon_salons/widgets/women_salon_widget.dart';

import '../../../../models/salon_model.dart';

class WomenSalons extends StatefulWidget {
  const WomenSalons({super.key});

  @override
  State<WomenSalons> createState() => _WomenSalonsState();
}

class _WomenSalonsState extends State<WomenSalons> {
  final List<SalonTask> salonsTasks = [
    SalonTask(
      taskId: "1",
      taskName: 'Manual Extractions ',
      taskDuration: '30 min',
      taskPrice: '20 JD',
    ),
    SalonTask(
      taskId: "2",
      taskName: 'Enzyme Painless Peels',
      taskDuration: '20 min',
      taskPrice: '17 JD',
    ),
    SalonTask(
      taskId: "3",
      taskName: 'Hydro Jelly Mask',
      taskDuration: '10 min',
      taskPrice: '8 JD',
    ),
    SalonTask(
      taskId: "4",
      taskName: 'Hybrids Lash Extensions',
      taskDuration: '10 min',
      taskPrice: '8 JD',
    ),
    SalonTask(
      taskId: "5",
      taskName: 'Mega Lash Extensions',
      taskDuration: '15 min',
      taskPrice: '12 JD',
    ),
    SalonTask(
      taskId: "6",
      taskName: 'Classic Lash Extensions',
      taskDuration: '20 min',
      taskPrice: '10 JD',
    ),
    SalonTask(
      taskId: "7",
      taskName: 'Steam & Cleanse',
      taskDuration: '20 min',
      taskPrice: '15 JD',
    ),
    SalonTask(
      taskId: "8",
      taskName: 'Manual Extractions',
      taskDuration: '20 min',
      taskPrice: '15 JD',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    List<Salon> womenSalons = [
      Salon(
        id: "21",
        name: 'ROZA BEAUTY SALON',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://i.etsystatic.com/24813456/r/il/bdf4f1/4000647506/il_fullxfull.4000647506_okdr.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://us.123rf.com/450wm/alexkoral/alexkoral2010/alexkoral201000115/alexkoral201000115.jpg?ver=6",
            "caption": "Coiffuring",
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9HgMARLh1WgVOcJ_gUL3gOaB-MzQKgmjnLw&usqp=CAU",
            "caption": " Cutting & Styling "
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk6n703-W3fGhFhofeuzrRwn2gEe4x6DGBTQ&usqp=CAU",
            "caption": "manicures & pedicures"
          },
          {
            "url":
                "https://cdn1.dermoi.com/wordpress/wp-content/uploads/2021/09/11130302/dermaplaning-5.jpg",
            "caption": "Dermaplaning"
          },
        ],
      ),
      Salon(
        id: "22",
        name: 'R&T SALON',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://static.vecteezy.com/system/resources/thumbnails/002/459/341/small/hair-woman-and-face-logo-and-symbols-free-vector.jpg',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "23",
        name: 'HAIR SALON',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://t4.ftcdn.net/jpg/03/63/90/29/360_F_363902960_P51Ursw5bJPCnFNEFj4n7bHmCXz6STbh.jpg',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "24",
        name: 'HAIR BY LELANI',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hair-logo-design-template-3f1ab60dd265abc9e7eaab9352f5c5c9_screen.jpg?ts=1602124776',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "25",
        name: 'BEAUTY CENTER',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9dxkMCm620gw3cAWNqWh7EFhuawC6FaiBMQ&usqp=CAU',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "26",
        name: 'BEAUTY HAIR',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://img.freepik.com/premium-vector/beauty-hair-care-logo-design_7518-113.jpg?w=2000',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "27",
        name: 'SUNA SALON',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/gold-salon-logo-design-template-f97a5f6a58afa5eb34712265bd8ccac0_screen.jpg?ts=1646827491',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "28",
        name: 'LOOKS AND STYLES',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://graphiccloud.net/wp-content/uploads/2019/05/Editable-Salon-Logo-Design-1200x900.jpg',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "29",
        name: 'YOUR LOOKS',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://www.seekpng.com/png/detail/425-4259667_gents-salon-logo-png-download-beauty-parlour-icon.png',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
      Salon(
        id: "30",
        name: 'VA MAKEUP',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://www.designmantic.com/images/industry/beauty/dm-beauty-logo-13.png',
        salonTask: salonsTasks,
        photosList: [
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
        ],
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
        // implement add ListView that contains multiple ListTiles
        child: ListView.builder(
          itemBuilder: (context, index) => WomenSalonWidget(
            salon: womenSalons[index],
          ),
        ),
      ),
    );
  }
}
