import 'package:flutter/material.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:auto_size_text/auto_size_text.dart'; // If you choose to use auto_size_text

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

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
                      "© 2024 All rights reseverd , CSERA",
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Responsive Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: screenWidth * 0.08, // 5% of screen width
                  ),
                  Icon(
                    Icons.fax_outlined,
                    color: Colors.white,
                    size: screenWidth * 0.08,
                  ),
                  Icon(
                    Icons.link_outlined,
                    color: Colors.white,
                    size: screenWidth * 0.08,
                  ),
                  Icon(
                    Icons.youtube_searched_for_sharp,
                    color: Colors.white,
                    size: screenWidth * 0.08,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
