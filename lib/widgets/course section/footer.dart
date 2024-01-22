import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors().AppBarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact CS-ERA",
                    style: GoogleFonts.roboto(color: Colors.amber,fontSize: 18,),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "364626264737",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "faisalaslam218@gmail.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Follow Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ],
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
