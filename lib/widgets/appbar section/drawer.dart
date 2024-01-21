import 'package:csera_app/widgets/appbar%20section/lists.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../utility/colors.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      backgroundColor: AppColors().AppBarColor,
      child: ListView(
        padding: EdgeInsets.zero,
        dragStartBehavior: DragStartBehavior.start,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPictureSize: Size.fromRadius(40),
            accountName: Text('John Doe'),
            accountEmail: Text('john.doe@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/who.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent, // Customize the background color
            ),
          ),
          Column(
            children: [
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
            ],
          ),
        ], //listview children
      ),
    );
  }
}
