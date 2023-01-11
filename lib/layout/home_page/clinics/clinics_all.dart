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

  @override
  Widget build(BuildContext context) {
    List<Salon> clinic = [
      Salon(
        id: "1",
        name: 'ROZ\'S BEAUTY CLINIC',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://thumbs.dreamstime.com/z/beauty-clinic-logo-spa-treatment-aesthetic-represent-shiny-good-shape-luxury-188443622.jpg',
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
        id: "2",
        name: 'WELLWOMEN CLINIC',
        description: 'Find beauty with us ...',
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
        id: "3",
        name: 'SMILES CLINIC',
        description: 'Find beauty with us ...',
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
        id: "4",
        name: 'SKIN LASER POINT',
        description: 'Find beauty with us ...',
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
        id: "5",
        name: 'BAEUTY CLINIC',
        description: 'Find beauty with us ...',
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
        id: "6",
        name: 'FLAWLESS YOU',
        description: 'Find beauty with us ...',
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
        id: "7",
        name: 'DENTAL CLINIC',
        description: 'Find beauty with us ...',
        imageUrl:
            'https://img.freepik.com/premium-vector/dental-logo-design-creative-dentist-logo-creative-dental-clinic-logo-dental-vector_227744-831.jpg?w=2000',
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
        id: "8",
        name: 'PURE CARE CLINIC',
        description: 'Find beauty with us ...',
        imageUrl:
            'http://img0cf.b8cdn.com/images/logo/18/2096618_logo_1638949833_n.png',
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
        id: "9",
        name: 'DIVA CLINIC',
        description: 'Find beauty with us ...',
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
        id: "10",
        name: 'CARE CLINIC',
        description: 'Find beauty with us ...',
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
