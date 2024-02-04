import 'package:csera_app/screens/Dashboard.dart';
import 'package:csera_app/screens/about%20section/whatisCsera.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        bottomNavigationBar: Container(
          height: Get.height * 0.08,
          child: StylishBottomBar(
            option: BubbleBarOptions(
                padding: EdgeInsets.zero,
                iconSize: 25,
                unselectedIconColor: Colors.grey),
            items: [
              BottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text(
                  'Home',
                  style: TextStyle(fontFamily: 'Muli6'),
                ),
                selectedColor: AppColors().AppBarColor,
              ),
              BottomBarItem(
                icon: const Icon(Icons.info),
                title: const Text(
                  'Projects',
                  style: TextStyle(fontFamily: 'Muli6'),
                ),
                selectedColor: AppColors().AppBarColor,
              ),
              BottomBarItem(
                icon: const Icon(Icons.supervised_user_circle),
                title: const Text(
                  'Services',
                  style: TextStyle(fontFamily: 'Muli6'),
                ),
                selectedColor: AppColors().AppBarColor,
              ),
              BottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontFamily: 'Muli6'),
                ),
                selectedColor: AppColors().AppBarColor,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
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
      ),
    );
  }
}
