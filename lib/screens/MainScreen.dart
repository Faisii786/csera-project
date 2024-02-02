import 'package:csera_app/Controllers/BottomBarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// ignore: must_be_immutable
class Main_screen extends StatelessWidget {
  BottombarController _controller =Get.put(BottombarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return _controller.tabs[_controller.selectedindex.value];
      }),
        bottomNavigationBar: ConvexAppBar(
          height: 60,
          backgroundColor: Colors.blue.shade400,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.account_balance, title: 'About'),
            TabItem(icon: Icons.shopping_cart, title: 'Services'),
            TabItem(icon: Icons.person, title: 'Join Now'),
          ],
          initialActiveIndex: _controller.selectedindex.value, // Set the initial selected tab
          onTap: (int index) {
            _controller.increase(index);
          },
        ),
    );
  }
}
