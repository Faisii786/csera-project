import 'package:csera_app/widgets/appbar section/lists.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../utility/colors.dart';

class MyDrawer extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      backgroundColor: AppColors().AppBarColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/drawer_csera.png"),
                ),
              ],
            )),
            lists(
                'Home',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                "1"),
            Divider(),
            lists(
                'About',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.align_vertical_bottom_outlined,
                  color: Colors.white,
                ),
                "2"),
            Divider(),
            lists(
                'Services',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.design_services_outlined,
                  color: Colors.white,
                ),
                "3"),
            Divider(),
            lists(
                'Courses',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.golf_course,
                  color: Colors.white,
                ),
                "4"),
            Divider(),
            lists(
                'Contact us',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.contact_page_outlined,
                  color: Colors.white,
                ),
                "5"),
            Divider(),
            lists(
                'Location',
                Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                Colors.white,
                Icon(
                  Icons.contact_page_outlined,
                  color: Colors.white,
                ),
                "8"),
            if (user == null)
              Column(
                children: [
                  Divider(),
                  lists(
                    'SignIn',
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    Colors.white,
                    Icon(
                      Icons.account_box,
                      color: Colors.white,
                    ),
                    "6",
                  ),
                ],
              )
            else
              Column(
                children: [
                  Divider(),
                  lists(
                    'SignOut',
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    Colors.white,
                    Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                    "7",
                  ),
                ],
              ),
          ], //listview children
        ),
      ),
    );
  }
}
