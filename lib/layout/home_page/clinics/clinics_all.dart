import 'package:flutter/material.dart';
import 'package:irl/layout/home_page/clinics/widgets/clinic_widget.dart';

import '../../../models/salon_model.dart';

class ClinicsAll extends StatefulWidget {
  const ClinicsAll({super.key});

  @override
  State<ClinicsAll> createState() => _ClinicsAllState();
}

class _ClinicsAllState extends State<ClinicsAll> {
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
  ];
  final List<SalonTask> salonsTask1 = [
    SalonTask(
      taskId: "1",
      taskName: 'Tooth Extractions ',
      taskDuration: '30 min',
      taskPrice: '25 JD',
    ),
    SalonTask(
      taskId: "2",
      taskName: 'Bridgework',
      taskDuration: '25 min',
      taskPrice: '30 JD',
    ),
    SalonTask(
      taskId: "3",
      taskName: 'Cosmetic Fillings',
      taskDuration: '20 min',
      taskPrice: '15 JD',
    ),
    SalonTask(
      taskId: "4",
      taskName: 'Invisalign',
      taskDuration: '20 min',
      taskPrice: '20 JD',
    ),
    SalonTask(
      taskId: "5",
      taskName: 'Teeth Whitening',
      taskDuration: '30 min',
      taskPrice: '50 JD',
    ),
    SalonTask(
      taskId: "6",
      taskName: 'Dentures',
      taskDuration: '20 min',
      taskPrice: '25 JD',
    ),
    SalonTask(
      taskId: "7",
      taskName: 'Teeth Cleanings',
      taskDuration: '25 min',
      taskPrice: '40 JD',
    ),
  ];
  final List<SalonTask> salonsTask2 = [
    SalonTask(
      taskId: "1",
      taskName: 'Bespoke Skin Fix Glow Package ',
      taskDuration: '30 min',
     taskPrice: '25 JD',
    ),
    SalonTask(
      taskId: "2",
      taskName: 'beard laser',
      taskDuration: '25 min',
      taskPrice: '30 JD',
    ),
    SalonTask(
      taskId: "3",
      taskName: 'Total body',
      taskDuration: '30 min',
      taskPrice: '60 JD',
    ),
    SalonTask(
      taskId: "4",
      taskName: 'Underarm',
      taskDuration: '20 min',
      taskPrice: '35 JD',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    List<Salon> clinic = [
      Salon(
        id: "31",
        name: 'ROZ\'S BEAUTY CLINIC',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://thumbs.dreamstime.com/z/beauty-clinic-logo-spa-treatment-aesthetic-represent-shiny-good-shape-luxury-188443622.jpg',
        salonTask: salonsTask1,
        photosList: [
          {
            "url":
                "https://images.everydayhealth.com/images/what-is-a-hydrafacial-722x406.jpg",
            "caption": "Hydrafacial",
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
        id: "32",
        name: 'WELLWOMEN CLINIC',
        description: 'Adding Care to your beauty',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssBBDIBlvVy8A3cRuM0MyIYHMPmB2ZY5umLmIBUf0TmCzQjsCTOPpzbW9bRrssJk1iJM&usqp=CAU',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUhziUcDYUF18XAdML3wkf7DAYPlnN91wA9w&usqp=CAU",
            "caption": " Lash extensions"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT052CybR7HiMJpEWSmmkpntpKYCh_EMJ1XDw&usqp=CAU",
            "caption": "Hydrafacial",
          },
          {
            "url":
                "https://hob-aesthetics.com/wp-content/uploads/2021/10/anti-aging-all-you-need-to-know-about-microneedling-technique.jpg",
            "caption": "Microneedling"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4fRUoNgquTwAJfsiASJck86AsBZ_j-X21Zw&usqp=CAU",
            "caption": "Dermaplaning"
          },
        ],
      ),
      Salon(
        id: "33",
        name: 'SMILES CLINIC',
        description: 'Lets you look Better ...',
        imageUrl:
            'https://i.pinimg.com/236x/e2/89/4c/e2894c1e02f85d723ee350bce697eda1.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9HgMARLh1WgVOcJ_gUL3gOaB-MzQKgmjnLw&usqp=CAU",
            "caption": " Lash extensions"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzJ9Y0DFNbLOqmfsOYqDDZw1UfsHImV3IeQ&usqp=CAU",
            "caption": "Laser Sessions",
          },
          {
            "url":
                "https://cdn1.dermoi.com/wordpress/wp-content/uploads/2021/09/11130302/dermaplaning-5.jpg",
            "caption": "Dermaplaning"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk6n703-W3fGhFhofeuzrRwn2gEe4x6DGBTQ&usqp=CAU",
            "caption": "Microneedling"
          },
        ],
      ),
      Salon(
        id: "34",
        name: 'SKIN LASER POINT',
        description: 'Refreshing your beauty senses',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJFIJl4JrO0UQQ39CglRZ8FD0yQkMvpgqC_n7mF949WG2X277VMUBRBX_wKMpLSqTht6M&usqp=CAU',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://cdn1.dermoi.com/wordpress/wp-content/uploads/2021/09/11130302/dermaplaning-5.jpg",
            "caption": "Dermaplaning"
          },
          {
            "url":
                "https://media.glamour.com/photos/5c6c2e080f659c0b74001d92/3:2/w_2700,h_1800,c_limit/hydrafacial-review.jpg",
            "caption": "Hydrafacial",
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSs785rWvJt0_sgmHwgSPxoHOGToQRIDBfkVJwj7XS7M65zu8Ymw2MOYdnve_J4jUySs&usqp=CAU",
            "caption": " Lash extensions"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQme7qtg8BnZYoTWdS2FmFlC20WteaN-ANLnA&usqp=CAU",
            "caption": "Microneedling"
          },
        ],
      ),
      Salon(
        id: "35",
        name: 'BAEUTY CLINIC',
        description: 'A place to look better ...',
        imageUrl:
            'https://cdn3.vectorstock.com/i/1000x1000/88/62/olive-beauty-clinic-logo-design-vector-25898862.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.everydayhealth.com/images/what-is-a-hydrafacial-722x406.jpg",
            "caption": "Hydrafacial",
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
        id: "36",
        name: 'FLAWLESS YOU',
        description: 'Own way of new beauty ...',
        imageUrl:
            'https://dcassetcdn.com/design_img/2270129/609639/609639_11942323_2270129_ac586107_image.png',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.everydayhealth.com/images/what-is-a-hydrafacial-722x406.jpg",
            "caption": "Hydrafacial",
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
        id: "37",
        name: 'DENTAL CLINIC',
        description: 'Because your smile is our passion',
        imageUrl:
            'https://img.freepik.com/premium-vector/dental-logo-design-creative-dentist-logo-creative-dental-clinic-logo-dental-vector_227744-831.jpg?w=2000',
        salonTask: salonsTask1,
        photosList: [
          {
            "url":
                "https://chambleedental.com/wp-content/uploads/dental-veneers-2012.jpg",
            "caption": "Dental Veneers",
          },
          {
            "url":
                "https://s21063.pcdn.co/wp-content/uploads/sites/297/2016/07/Dental-Cleaning-Consultation.jpg.optimal.jpg",
            "caption": "Teeth Cleanings"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9NGFjKuQuzFyfr22krVAU4y8lzcS4ONZTTw&usqp=CAU",
            "caption": "Dentures"
          },
          {
            "url":
                "https://www.sarasotadentistry.com/wp-content/uploads/2019/05/laser-teeth-whitening-in-dental-clinic.jpg",
            "caption": "Teeth Whitening"
          },
        ],
      ),
      Salon(
        id: "38",
        name: 'PURE CARE CLINIC',
        description: 'Crafting your dream of beauty',
        imageUrl:
            'http://img0cf.b8cdn.com/images/logo/18/2096618_logo_1638949833_n.png',
        salonTask: salonsTask2,
        photosList: [
          {
            "url":
                "https://uploads-ssl.webflow.com/603945b40961acc75f6b2767/60c49c976bf400ad81951b50_the-laser-clinic-group-uxbridge-2270106.jpg",
            "caption": "Total body",
          },
          {
            "url":
                "https://cdn04.storat.com/listings/discounts-on-laser-hair-removal-sessions-for-men-with-drkayle-dubai-1-in-umm-suqeim-5c5ff15a977b6_original.jpeg",
            "caption": "Beard laser"
          },
          {
            "url":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk6n703-W3fGhFhofeuzrRwn2gEe4x6DGBTQ&usqp=CAU",
            "caption": "Face laser"
          },
          {
            "url":
                "https://the-riotact.com/wp-content/uploads/2019/07/The-best-laser-clinics-in-Canberra.png",
            "caption": "Full body"
          },
        ],
      ),
      Salon(
        id: "39",
        name: 'DIVA CLINIC',
        description: 'Brush to more beautiful ...',
        imageUrl:
            'https://www.shutterstock.com/image-vector/women-health-logo-template-design-260nw-1157911546.jpg',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.everydayhealth.com/images/what-is-a-hydrafacial-722x406.jpg",
            "caption": "Hydrafacial",
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
        id: "40",
        name: 'CARE CLINIC',
        description: 'We will style you better ...',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGUdg4pF2ceoN6KUAclwAtrwklFxthMC7A1zeX9sRvcwxz2HRNj5FJmXQcwGH1KEECXps&usqp=CAU',
        salonTask: salonsTasks,
        photosList: [
          {
            "url":
                "https://images.everydayhealth.com/images/what-is-a-hydrafacial-722x406.jpg",
            "caption": "Hydrafacial",
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
              ],
            ),
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
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
        // implement add ListView that contains multiple ListTiles
        child: ListView.builder(
          itemBuilder: (context, index) => ClinicWidget(salon: clinic[index]),
        ),
      ),
    );
  }
}
