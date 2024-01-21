import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class whatisCsera extends StatefulWidget {
  const whatisCsera({Key? key});

  @override
  State<whatisCsera> createState() => _whatisCseraState();
}

class _whatisCseraState extends State<whatisCsera> {
  bool isExpanded = false;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
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
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors().textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '''CSERA is an innovative IT services and training company committed to redefining the digital landscape. With a dedicated team of experts and a relentless commitment to excellence, we excel in delivering cutting-edge solutions and comprehensive training programs across various domains of information technology. Our core focus is on Cyber Security, Artificial Intelligence, Internet of Things, and Blockchain Services, where we offer an array of solutions to build and safeguard your digital assets. Along with these, we provide training and services in Digital Marketing, Software Development, Cloud Services, Graphic Designing, Web Development, network and infrastructure services, and many more. Whether you need tailored digital marketing strategies, custom software solutions, cybersecurity defenses, blockchain innovations, or cloud technology implementations.''',
                      style: GoogleFonts.roboto(fontSize: 15),
                    ),
                    const SizedBox(height: 16),
                    Divider(),
                    const SizedBox(height: 16),
                    // Founder Information with Collapsible Container
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Founder Information',
                              style: GoogleFonts.anekLatin(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColors().AppBarColor,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isExpanded2
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: 30,
                                color: AppColors().AppBarColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  isExpanded2 = !isExpanded2;
                                });
                              },
                            ),
                          ],
                        ),
                        if (isExpanded2)
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Left Side: Picture
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                  AssetImage("assets/images/ShayanSection/ContainerPics/waseem_abbas.jpeg"),
                                ),
                                // Right Side: Content
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        Text(
                                          'Waseem Abbas',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        buildDetailRow('Speciality:', 'Cyber Security Expert'),
                                        buildDetailRow('Experience:', '5 years'),
                                        buildDetailRow('Achievements:', 'Best Developer 2020'),
                                        buildDetailRow('Email:', 'waseem@example.com'),
                                        buildDetailRow('Contact:', '+1234567890'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mission And Vision',
                              style: GoogleFonts.anekLatin(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColors().AppBarColor,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: 30,
                                color: AppColors().AppBarColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                            ),
                          ],
                        ),
                        if (isExpanded)
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mission",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Our vision is to empower tomorrow's innovators by leading with innovation today. We aspire to be the bridge to IT excellence, staying at the forefront of technology and shaping the digital landscape. We are committed to transforming the IT industry with groundbreaking solutions, providing state-of-the-art services, offering comprehensive training programs, and promoting digital literacy. At CSERA, we envision a future where technology empowers and transforms lives.",
                                  style: GoogleFonts.roboto(fontSize: 16),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Values",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "At CSERA, our mission is to continuously innovate and lead the way in IT services and training across diverse domains. We transform knowledge into expertise, empowering our clients to thrive in the ever-evolving digital landscape. Through cutting-edge solutions, comprehensive training programs, and unwavering dedication to client-centric excellence, we aim to drive success for businesses and individuals alike.",
                                  style: GoogleFonts.roboto(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        'CSERA PVT LTD',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
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

  Widget buildDetailRow(String label, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            '$label',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(' $value'),
        ],
      ),
    );
  }
}
