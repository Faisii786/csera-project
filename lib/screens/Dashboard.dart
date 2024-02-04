import 'package:csera_app/google_map/map_page.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';
import 'package:csera_app/widgets/about%20section/about_container.dart';
import 'package:csera_app/widgets/course%20section/footer.dart';
import 'package:csera_app/widgets/course%20section/training_cards.dart';
import 'package:flutter/material.dart';
import 'package:csera_app/widgets/slider_section/coursel.dart';
import 'package:csera_app/widgets/slider_section/about_text.dart';
import 'package:csera_app/widgets/course%20section/courses_cards.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../google_map/map_page.dart';

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
          Padding(
<<<<<<< HEAD
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
                onTap: ()async{
                  print("click");
                 await MapPage();
                },
                child: Icon(Icons.location_on)),
=======
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Get.to(()=> MapPage());
                },
                icon: Icon(Icons.location_on),
            ),
>>>>>>> 819880e3a0dd8a0387ec1a726f3df0680e747826
          ),
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: AppColors().BgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageCarousel(),
            ClickMoreSection(),
            AnimatedContainers(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                "Course offered",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            courses_cards(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Training Programs",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            training_cards(),
            //logo_container(),
            SizedBox(
              height: 10,
            ),
<<<<<<< HEAD
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Our Projects",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            training_cards(),

=======
>>>>>>> 819880e3a0dd8a0387ec1a726f3df0680e747826
            MyFooter(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
