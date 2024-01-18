import 'package:carousel_slider/carousel_slider.dart';
import 'package:csera_app/screens/Dashboard.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;

  List<Widget> screens = [
    SplashPage(
      imagePath: 'assets/images/learning.png',
      title: 'Start Learning',
      description:
          'Start learning now by using this app, Get your choasen course and start the journey. Start today with Csera, where learning meets innovation.',
    ),
    SplashPage(
      imagePath: 'assets/images/explore.png',
      title: 'Explore Courses',
      description:
          'Choose Which course is suitable for you to enroll in. Start today with Csera, where learning meets innovation.',
    ),
    SplashPage(
      imagePath: 'assets/images/time.png',
      title: 'At Any time.',
      description:
          'Your courses is available at any time you want Join us now! Start today with Csera, where learning meets innovation.',
    ),
    DashboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().AppBarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            items: screens,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                screens.length - 1,
                (index) => buildDot(index),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()));
              },
              child: Text(
                "Skip",
                style: GoogleFonts.alatsi(
                  color: Color.fromARGB(255, 206, 196, 196),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index
            ? Color.fromARGB(255, 191, 194, 24)
            : Colors.grey,
      ),
    );
  }
}
