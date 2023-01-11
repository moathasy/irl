import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/salons_category/men_salons/widgets/men_salon_widget.dart';
import 'package:irl/models/salon_model.dart';
import 'package:uuid/uuid.dart';

class Men extends StatefulWidget {
  const Men({super.key});

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
  var uuid = const Uuid();

  final List<SalonTask> salonsTasks = [
    SalonTask(
      taskId: "1",
      taskName: 'Classic Men\'s Haircut',
      taskDuration: '30 min',
      taskPrice: '20 JD',
    ),
    SalonTask(
      taskId: "2",
      taskName: 'Hair Coloring',
      taskDuration: '20 min',
      taskPrice: '17 JD',
    ),
    SalonTask(
      taskId: "3",
      taskName: 'Hair Blowdry',
      taskDuration: '10 min',
      taskPrice: '8 JD',
    ),
    SalonTask(
      taskId: "4",
      taskName: 'Hair Tonic',
      taskDuration: '10 min',
      taskPrice: '8 JD',
    ),
    SalonTask(
      taskId: "5",
      taskName: 'Beard Trim',
      taskDuration: '15 min',
      taskPrice: '12 JD',
    ),
    SalonTask(
      taskId: "6",
      taskName: 'Royal Shave/Royal Beard',
      taskDuration: '20 min',
      taskPrice: '10 JD',
    ),
    SalonTask(
      taskId: "7",
      taskName: 'Kids Haircut,Under 14',
      taskDuration: '20 min',
      taskPrice: '15 JD',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Salon> menSalons = [
      Salon(
        id: "1",
        name: 'JOHN\'S BARBER SHOP',
        description: 'High standards are on us ...',
        imageUrl: 'assets/images/JOHNS.webp',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.dailyhive.com/20191227092308/shutterstock_746531563.jpg",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://media.estrending.com/wp-content/uploads/2021/04/estrending-barbero-rapa-su-cabeza-en-solidaridad-de-su-amigo-con-cancer-2021.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2020/08/31123544/gettyimages-181879127-1589643370.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "2",
        name: 'ADAM BARBER SHOP',
        description: 'Let your hair do the talking',
        imageUrl: 'assets/images/adam.png',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://uploads-ssl.webflow.com/604f1209aca4e58eb9739846/6052433f604e0e7fd5ae9f02_adam-grooming-atelier-london.png",
            "caption": "Hair Care",
          },
          {
            "url": "https://www.bu.edu/files/2019/06/barber.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://cdntrust.s3.us-east-2.amazonaws.com/images/73de6d14-4c41-458d-bcbb-d131c259f868.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://thebarbercalgary.com/wp-content/uploads/2020/03/barber-se-calgary-3.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "3",
        name: 'BOND BARBER SHOP',
        description: 'The best haircut you\'ll ever get!',
        imageUrl: 'assets/images/bond.jpg',
        salonTask: salonsTasks,
        photosList: [
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
          },
          {
            "url":
                "https://the-riotact.com/wp-content/uploads/2001/04/The-Best-Barbers-In-Queanbeyan.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "4",
        name: 'MOUNTAIN BARBER SHOP',
        description: 'We give men the beards they want',
        imageUrl: 'assets/images/mountain.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://cdn.shopify.com/s/files/1/1790/8153/products/IMG1_900x.jpg?v=1556312318",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://www.timeoutriyadh.com/cloud/timeoutriyadh/2021/11/03/Barbershop-in-riyadh.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://img.freepik.com/free-photo/man-barbershop-salon-doing-haircut-beard-trim_1303-20953.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://fashionjournal.com.au/wp-content/uploads/2017/12/Trim-1.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "5",
        name: 'SPARTAN BARBER SHOP',
        description: 'We can help you look your best',
        imageUrl: 'assets/images/spartan.jpg',
        salonTask: salonsTasks,
        photosList: [
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
          },
          {
            "url":
                "https://www.oneeducation.org.uk/wp-content/uploads/2020/08/How-to-become-a-barber.png",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "6",
        name: 'PARTNERS BARBER SHOP',
        description: 'You can\'t judge a book by its cover',
        imageUrl: 'assets/images/partners.webp',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://www.hji.co.uk/wp-content/efs/2018/07/Add-on-Services-Feat-imageshutterstock_583807345.jpg",
            "caption": "Facial Care",
          },
          {
            "url": "https://cdn.spafinder.com/2016/10/mens-facial.jpg",
            "caption": "Skin Care"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Skin Cleaning"
          },
          {
            "url":
                "https://www.cunard.com/content/dam/cunard/my-cruise/spa/categories/CUN_Category%20Tiles_Mens%20Services.jpg",
            "caption": "Relaxing"
          },
        ],
      ),
      Salon(
        id: "7",
        name: 'ALDENIRE BARBER SHOP',
        description: 'You don\'t just get a closer shave!',
        imageUrl: 'assets/images/MMM.webp',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.dailyhive.com/20191227092308/shutterstock_746531563.jpg",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://media.estrending.com/wp-content/uploads/2021/04/estrending-barbero-rapa-su-cabeza-en-solidaridad-de-su-amigo-con-cancer-2021.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2020/08/31123544/gettyimages-181879127-1589643370.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "8",
        name: 'BROTHERS BARBER SHOP',
        description: 'The Best Little Hair House in Town',
        imageUrl: 'assets/images/brothers.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.dailyhive.com/20191227092308/shutterstock_746531563.jpg",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://media.estrending.com/wp-content/uploads/2021/04/estrending-barbero-rapa-su-cabeza-en-solidaridad-de-su-amigo-con-cancer-2021.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2020/08/31123544/gettyimages-181879127-1589643370.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "9",
        name: 'NERD HEAD BARBER SHOP',
        description: 'Because You\'re Worth It ...',
        imageUrl: 'assets/images/nerd.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.dailyhive.com/20191227092308/shutterstock_746531563.jpg",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://media.estrending.com/wp-content/uploads/2021/04/estrending-barbero-rapa-su-cabeza-en-solidaridad-de-su-amigo-con-cancer-2021.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2020/08/31123544/gettyimages-181879127-1589643370.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
      Salon(
        id: "10",
        name: 'PERBAR BARBER SHOP',
        description: 'We always do the best we can ...',
        imageUrl: 'assets/images/perfect.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.dailyhive.com/20191227092308/shutterstock_746531563.jpg",
            "caption": "Hair Care",
          },
          {
            "url":
                "https://media.estrending.com/wp-content/uploads/2021/04/estrending-barbero-rapa-su-cabeza-en-solidaridad-de-su-amigo-con-cancer-2021.jpg",
            "caption": "Hair Styling"
          },
          {
            "url":
                "https://1.bp.blogspot.com/-T7qx0BNZQ1g/YZwP7LvfUpI/AAAAAAAAdV0/3NXRgcxJFNMUkNOko6V_zy7E7-E4Ai6sQCLcBGAsYHQ/s652/0bf415e12e0eb4742c68e340d7bee14e.jpg",
            "caption": "Hair Cut"
          },
          {
            "url":
                "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2020/08/31123544/gettyimages-181879127-1589643370.jpg",
            "caption": "Hair Coloring"
          },
        ],
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
        // implement add ListView that contains multiple ListTiles
        child: ListView.builder(
          itemCount: menSalons.length,
          itemBuilder: (context, index) => MenSalonsWidget(
            salon: menSalons[index],
          ),
        ),
      ),
    );
  }
}
