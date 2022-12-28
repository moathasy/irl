import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  child: Text(
                    'M',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.brown.shade500,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Moath Asy',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/2560px-Flag_of_Jordan.svg.png'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Jordan')
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 170,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined))
            ],
          ),
          SizedBox(
            height: 30,
          ),
        itemBuilder(Icons.list_alt, 'Your Orders'),
          itemBuilder(Icons.local_offer, 'Offers'),
          itemBuilder(Icons.notification_important, 'Notification'),
          itemBuilder(Icons.list_alt, 'Your Orders'),
          itemBuilder(Icons.list_alt, 'Your Orders'),
          itemBuilder(Icons.list_alt, 'Your Orders'),
          itemBuilder(Icons.list_alt, 'Your Orders'),

        ],
      ),
    );
  }
}
