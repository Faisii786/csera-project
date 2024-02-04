import 'package:csera_app/Authentication/SignUp.dart';
import 'package:csera_app/screens/Splash%20Screen/Splash_button2.dart';
import 'package:csera_app/screens/Splash%20Screen/splash_button1.dart';
import 'package:csera_app/screens/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  //CheckUserState splashServices = CheckUserState();
  @override
  void initState() {
    super.initState();
    //splashServices.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(
                  0.64), // Adjust the opacity value to change brightness
              BlendMode.multiply,
            ),
            child: Image.asset(
              "assets/images/wellcome.jpg",
              fit: BoxFit.cover,
              height: Get.height,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                "Embark on a journey with",
                style: GoogleFonts.aBeeZee(
                  color: Color.fromARGB(255, 184, 187, 185),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "CSERA PVT LTD",
                style: GoogleFonts.boogaloo(
                  color: Color.fromARGB(255, 184, 187, 185),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Your Gateway to IT Excellence",
                style: GoogleFonts.aBeeZee(
                  color: Color.fromARGB(255, 184, 187, 185),
                  fontSize: 20,
                ),
              ),
              Spacer(
                flex: 3,
              ),
              SplashButton1(
                  text: "Get Started",
                  onPressed: () {
                    Get.to(() => MyBottomNavbar(),
                        transition: Transition.fadeIn);
                  }),
              SizedBox(
                height: 10,
              ),
              SplashButton2(
                  text: "Create Account",
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  }),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
