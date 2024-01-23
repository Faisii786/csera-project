import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';
import 'package:csera_app/widgets/about%20section/about_container.dart';
import 'package:csera_app/widgets/course%20section/footer.dart';
import 'package:csera_app/widgets/course%20section/training_cards.dart';
import 'package:flutter/material.dart';
import 'package:csera_app/widgets/slider_section/coursel.dart';
import 'package:csera_app/widgets/slider_section/about_text.dart';
import 'package:csera_app/widgets/course%20section/courses_cards.dart';
import 'package:google_fonts/google_fonts.dart';

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
            MyFooter(),
          ],
        ),
      ),
    );
  }
}
