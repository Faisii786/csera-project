import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';
import 'package:csera_app/widgets/about%20section/about_container.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';
import 'package:flutter/material.dart';
import 'package:csera_app/widgets/coursel.dart';
import 'package:csera_app/widgets/about_text.dart';
import 'package:csera_app/widgets/logo_container.dart';
import 'package:csera_app/widgets/course_card.dart';

import '../widgets/course section/course_container.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors().AppBarColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Image.asset(
          "assets/images/logo2.png",
          width: 80,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),

         
          ],
        ),
        drawer: MyDrawer(),
      backgroundColor: AppColors().BgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageCarousel(),
            ClickMoreSection(),
            animatedContainers(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Course offered",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            courses_cards(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Training Programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            cousrse_card2(),
            logo_container(),
          ],
        ),
      ),
    );
  }
}