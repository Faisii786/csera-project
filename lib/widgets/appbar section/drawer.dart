import 'package:csera_app/widgets/appbar%20section/lists.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/appbar_logo.jpg'),
                  radius: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'Home',
                  Icon(
                    Icons.account_balance_rounded,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'ABOUT',
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'COURSES',
                  Icon(
                    Icons.discount_rounded,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.propane_tank,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'SERVICES',
                  Icon(
                    Icons.design_services_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'CONTACT US',
                  Icon(
                    Icons.contact_phone,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.person_off,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'BLOG',
                  Icon(
                    Icons.vpn_lock_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.ad_units_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
  }
}