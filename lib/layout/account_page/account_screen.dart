import 'package:flutter/material.dart';
import 'package:irl/layout/my_booking/my_booking_screen.dart';
import 'package:irl/layout/orders/cosmatics_order.dart';
import 'package:irl/models/user.dart';
import 'package:irl/provider/users_data.dart';
import 'package:provider/provider.dart';

import '../../shared/components/components.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Account userData = Account.empty();

  @override
  void initState() {
    userData = Provider.of<UsersData>(context, listen: false).getAccount;

    if (userData == Account.empty()) {
      fetchData();
    }
    super.initState();
  }

  void fetchData() async {
    userData =
        await Provider.of<UsersData>(context, listen: false).fetchUserData();

    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade500,
                  child: const Icon(Icons.person),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userData.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/2560px-Flag_of_Jordan.svg.png',
                          ),
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
              const SizedBox(
                width: 170,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          itemBuilder(
              icon: Icons.list_alt,
              label: 'My Orders',
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const MyCosmeticsOrder()))),
          itemBuilder(
              icon: Icons.list_alt,
              label: 'My Bookings',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MyBookingScreen()))),
          itemBuilder(icon: Icons.local_offer, label: 'Offers', onTap: () {}),
          itemBuilder(
              icon: Icons.notification_important,
              label: 'Notification',
              onTap: () {}),
          itemBuilder(
            icon: Icons.logout,
            label: 'Logout',
            onTap: () => UsersData.onLogout(ctx: context),
          ),
        ],
      ),
    );
  }
}
