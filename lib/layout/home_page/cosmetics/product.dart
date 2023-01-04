import 'package:flutter/material.dart';

import 'data_product.dart';

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 27.0,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    const Icon(
                      Icons.search,
                      size: 25.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.shopping_bag),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'SHAMPOO',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.73,
                    ),
                    itemCount: 39,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.brown.shade200,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular((100)),
                                ),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 150,
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 100,
                                        backgroundImage:
                                            AssetImage(data[index]['image']),
                                      ),
                                      // Image.asset(data[index]['image'],height: 100,),
                                      // Image(image: AssetImage('assets/images/product1.jpg'),height: 160,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            data[index]['name'],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            data[index]['price'],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
