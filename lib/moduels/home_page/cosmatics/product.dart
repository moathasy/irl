import 'package:flutter/material.dart';
import 'package:irl_graduation_project/moduels/home_page/cosmatics/data_product.dart';
class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    // var product;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Row(children: [
                Icon(Icons.menu,size: 27.0,),
                Expanded(child: Container(),),
                Icon(Icons.search,size: 25.0,),
                SizedBox(width: 10,),
                Icon(Icons.shopping_bag),
              ],),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SHAMPOO',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Text('See All',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                
              ],),
            ),
            Expanded(
              child: Container(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child:
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.73,
                 ),
                  itemCount: 39,
                  itemBuilder: (context,index){
                   return
                     Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(
                         child: Container(
                           width: double.maxFinite,
                           decoration: BoxDecoration(
                             color: Colors.brown.shade200,
                             borderRadius: BorderRadius.all(Radius.circular((100))),
                           ),
                           child: Center(
                             child: Container(
                               width: 150,
                               child: Stack(
                                 children: [
                                   CircleAvatar(

                                     radius: 100 ,

                                     backgroundImage: AssetImage(data[index]['image']),
                                   ),
                                   // Image.asset(data[index]['image'],height: 100,),
                                   // Image(image: AssetImage('assets/images/product1.jpg'),height: 160,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Text(data[index]['name'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                       Text(data[index]['price'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),

                     ],
                   );

                  }),
             ),
            ),

          ],),


        ),

      ),
    );
  }
}
