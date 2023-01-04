import 'package:flutter/material.dart';

class FirstCosmatics extends StatefulWidget {
  @override
  State<FirstCosmatics> createState() => _FirstCosmaticsState();
}

class _FirstCosmaticsState extends State<FirstCosmatics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/OSEA-HYALURONIC-SEA-SERUM.webp'),
                radius: 45.0,
              ),
              Text('jjkmkm'),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../../models/item.dart';
//
// class FirstCosmatics extends StatelessWidget {
//
//
//   List<UserModel> Users= [
//     UserModel(id: 1, name: 'moath', price: '88 JOD'),
//     UserModel(id: 2, name: 'ahmed', price: '88 JOD'),
//     UserModel(id: 3, name: 'khaled', price: '88 JOD'),
//     UserModel(id: 1, name: 'moath', price: '88 JOD'),
//     UserModel(id: 2, name: 'ahmed', price: '88 JOD'),
//     UserModel(id: 3, name: 'khaled', price: '88 JOD'),
//     UserModel(id: 1, name: 'moath', price: '88 JOD'),
//     UserModel(id: 2, name: 'ahmed', price: '88 JOD'),
//     UserModel(id: 3, name: 'khaled', price: '88 JOD'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//             'Users'
//         ),
//       ),
//       body:
//       ListView.separated(itemBuilder: (context,index) =>buildUserItem(Users[index])  ,
//         separatorBuilder: (context,index) => Padding(
//           padding: const EdgeInsetsDirectional.only(
//             start: 15.0,
//
//           ),
//           child: Container(
//             width: double.infinity,
//             color: Colors.black38,
//             height: 1.2,
//           ),
//         ) ,
//         itemCount: Users.length,
//       ),
//     );
//   }
//   Widget buildUserItem(UserModel user) => Padding(
//     padding: const EdgeInsets.all(15.0),
//     child: Row(
//       children: [
//         CircleAvatar(
//           backgroundImage: AssetImage('assets/images/9846cfb4-eadb-43b9-b5fb-808660f8b492.jpg'),
//           radius: 35.0,
//           child:
//           Text(
//               '${user.id}'
//           ),
//         ),
//         SizedBox(
//           width: 15.0,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               '${user.name}',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22.0,
//               ),
//             ),
//             Text(
//               '${user.price}',
//               style: TextStyle(
//                 color: Colors.blueGrey,
//                 fontSize: 17.0,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(width: 150,),
//         IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline),)
//       ],
//     ),
//   );
// }
