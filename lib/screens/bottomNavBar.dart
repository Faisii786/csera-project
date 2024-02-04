import 'package:csera_app/screens/Dashboard.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class MyBottomNavbar extends StatefulWidget {
  @override
  _MyBottomNavbarState createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int selected = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: PageView(
          controller: _controller,
          children: [
            DashboardScreen(),
            Center(child: Text("Projects")),
            Center(child: Text("Services")),
            Center(child: Text("Profile"))
          ],
        ),
        bottomNavigationBar: StylishBottomBar(
          backgroundColor: AppColors().AppBarColor,
          option: BubbleBarOptions(
            padding: EdgeInsets.zero,
            iconSize: 25,
            unselectedIconColor: Colors.grey,
          ),
          items: [
            BottomBarItem(
              icon: const Icon(
                Icons.home,
              ),
              selectedColor: Colors.white,
              title: const Text(
                'Home',
                style: TextStyle(fontFamily: 'Muli6'),
              ),
            ),
            BottomBarItem(
              icon: const Icon(
                Icons.info,
              ),
              selectedColor: Colors.white,
              title: const Text(
                'Projects',
                style: TextStyle(
                  fontFamily: 'Muli6',
                ),
              ),
            ),
            BottomBarItem(
              icon: const Icon(
                Icons.supervised_user_circle,
              ),
              selectedColor: Colors.white,
              title: const Text(
                'Services',
                style: TextStyle(
                  fontFamily: 'Muli6',
                ),
              ),
            ),
            BottomBarItem(
              icon: const Icon(
                Icons.person,
              ),
              selectedColor: Colors.white,
              title: const Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Muli6',
                ),
              ),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          elevation: 0.0,
          currentIndex: selected,
          onTap: (index) {
            setState(() {
              selected = index;
              _controller.jumpToPage(index);
            });
          },
        ),
      ),
    );
  }
}
