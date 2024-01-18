import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'joinNow.dart';

class whatisCsera extends StatefulWidget {
  const whatisCsera({Key? key});

  @override
  State<whatisCsera> createState() => _whatisCseraState();
}

class _whatisCseraState extends State<whatisCsera> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors().BgColor,
              expandedHeight: 120,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                titlePadding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                background: Image.asset(
                  'assets/images/what-is-csera.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "What is Csera",
                      style: GoogleFonts.anekLatin(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '''CSERA is an innovative IT services and training company committed to redefining the digital landscape. With a dedicated team of experts and a relentless commitment to excellence, we excel in delivering cutting-edge solutions and comprehensive training programs across various domains of information technology. Our core focus is on Cyber Security, Artificial Intelligence, Internet of things, and Block chain Services, where we offer an array of solutions to build and safeguard your digital assets. Along with these, we provide trainings and services in Digital Marketing, Software Development, Cloud Services, Graphic Designing, Web Development, network and infrastructure services and many more. Whether you need tailored digital marketing strategies, custom software solutions, cybersecurity defenses, blockchain innovations, or cloud technology implementations, we are your partner in this transformative journey. With a wide array of certifications available, individuals can acquire industry- recognized credentials in cybersecurity, programming and development, networking, blockchain, artificial intelligence, and cloud computing, making them highly skilled and competitive in the IT landscape.''',
                    style: GoogleFonts.roboto(fontSize: 15),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the Join Now page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => joinNow(),
                          ),
                        );
                      },
                      child: Center(child: Text('Join Now')),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


