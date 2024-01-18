import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';

import 'package:flutter/material.dart';
import 'package:csera_app/widgets/coursel.dart';
import 'package:csera_app/widgets/about_text.dart';
import 'package:csera_app/widgets/logo_container.dart';

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
          child: Column(
            children: [
              ImageCarousel(),
              logo_container(),
              ClickMoreSection(),
            ],
          ),
        ));
  }
}
