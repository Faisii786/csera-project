import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cyberdetail extends StatefulWidget {
  const cyberdetail({super.key});

  @override
  State<cyberdetail> createState() => _cyberdetailState();
}

class _cyberdetailState extends State<cyberdetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors().BgColor,
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                titlePadding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                background: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    'assets/images/amzanon.png',
                    fit: BoxFit.cover,
                  ),
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
                      "About Cyber Security",
                      style: GoogleFonts.anekLatin(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Csera, our esteemed company specializing in cybersecurity, is dedicated to providing an extensive and thorough training program that equips individuals with the skills needed to navigate the complex landscape of digital security. Our comprehensive course spans a spectrum of crucial aspects, starting from the nuanced realm of threat detection to the strategic intricacies of risk mitigation. Participants in our program delve into the intricacies of cyber defense, gaining valuable insights into the latest threats and vulnerabilities prevalent in today's interconnected world. We take pride in molding cyber sentinels who are not only adept at identifying potential risks but also proficient in implementing effective countermeasures to protect valuable digital assets. At Csera, we believe in empowering our learners to not just understand cybersecurity concepts but to apply them effectively in real-world scenarios. Join us on a transformative journey, where you emerge not just as a participant but as a guardian of digital landscapes, well-versed in the art and science of cybersecurity.Csera, our esteemed company specializing in cybersecurity, is dedicated to providing an extensive and thorough training program that equips individuals with the skills needed to navigate the complex landscape of digital security. Our comprehensive course spans a spectrum of crucial aspects, starting from the nuanced realm of threat detection to the strategic intricacies of risk mitigation. Participants in our program delve into the intricacies of cyber defense, gaining valuable insights into the latest threats and vulnerabilities prevalent in today's interconnected world. We take pride in molding cyber sentinels who are not only adept at identifying potential risks but also proficient in implementing effective countermeasures to protect valuable digital assets. At Csera, we believe in empowering our learners to not just understand cybersecurity concepts but to apply them effectively in real-world scenarios. Join us on a transformative journey, where you emerge not just as a participant but as a guardian of digital landscapes, well-versed in the art and science of cybersecurity.",
                        style: GoogleFonts.roboto(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
