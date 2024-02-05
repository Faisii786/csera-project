import 'package:flutter/material.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class MyFooter extends StatelessWidget {
  const MyFooter({Key? key});

  // Function to open a URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors().AppBarColor,
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Make the image size responsive
                  Image.asset(
                    "assets/images/logo2.png",
                    width: screenWidth * 0.2, // 20% of screen width
                  ),
                  // Use AutoSizeText for responsive text
                  Expanded(
                    child: AutoSizeText(
                      "© 2024 All rights reserved, CSERA",
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Responsive Icons with GestureDetector
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.facebook.com/csera23');
                    },
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white.withOpacity(0.8),
                      size: screenWidth * 0.08, // 5% of screen width
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.instagram.com/csera_private_ltd/?igsh=MzRlODBiNWFlZA%3D%3D');
                    },
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white.withOpacity(0.8),
                      size: screenWidth * 0.08, // 5% of screen width
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://twitter.com/era_creati81002');
                    },
                    child: Icon(
                      FontAwesomeIcons.xTwitter,
                      color: Colors.white.withOpacity(0.8),
                      size: screenWidth * 0.08, // 5% of screen width
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.linkedin.com/company/csera/mycompany/verification/');
                    },
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white.withOpacity(0.8),
                      size: screenWidth * 0.08, // 5% of screen width
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.youtube.com/channel/UCyYaoJfay0imCJLslN17KMw');
                    },
                    child: Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.white.withOpacity(0.8),
                      size: screenWidth * 0.08, // 5% of screen width
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
