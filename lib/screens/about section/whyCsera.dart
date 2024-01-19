import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'joinNow.dart';
import 'package:csera_app/utility/colors.dart';

class whyCsera extends StatefulWidget {
  const whyCsera({Key? key});

  @override
  State<whyCsera> createState() => _whyCseraState();
}

class _whyCseraState extends State<whyCsera> {
  bool showFullText1 = false;
  bool showFullText2 = false;
  bool showFullText3 = false;
  bool showFullText4 = false;
  bool showFullText5 = false;

  List<String> images = [
    'assets/images/ShayanSection/WhyCseraLogos/1.png',
    'assets/images/ShayanSection/WhyCseraLogos/2.png',
    'assets/images/ShayanSection/WhyCseraLogos/3.png',
    'assets/images/ShayanSection/WhyCseraLogos/4.png',
    'assets/images/ShayanSection/WhyCseraLogos/5.png',
  ];
  List<String> titles = [
    'Innovation at the Core',
    'World-Class Instructors',
    'Internship to Job Opportunity',
    'Complete Learning Path for Beginners',
    'Hands-On Practical Learning',
  ];
  List<String> descriptions = [
    "Despite being a recent addition to the IT education landscape, we're already making waves by bringing fresh ideas and approaches to the table. We're not just keeping up with the industry; we're setting the pace. Choose CSERA for a transformative journey into the world of technology. Join us, and let's innovate, learn, and succeed together. Your future in IT starts here.",
    "Our team comprises world-class instructors with extensive experience in cybersecurity, artificial intelligence, networking, blockchain, and cloud technologies. They bring not just knowledge but real-world insights, ensuring you learn from the best in the field.",
    "We don't just stop at knowledge transfer; we believe in transforming your career. Every student at CSERA has the chance to embark on an internship journey that leads to a permanent job opportunity. We're invested in your success, both as learners and future professionals.",
    "Whether you're a novice in the IT world or seeking to enhance your skills, we offer a comprehensive learning path for beginners. Our structured curriculum guides you through every step, ensuring you build a strong foundation and progress seamlessly.",
    "All our training programs are designed with a focus on hands-on practical experience. We believe that the best way to learn is by doing, and our dynamic, interactive sessions ensure you get real-world exposure from day one.",
  ];

  Widget buildRow(int index) {
    bool showFullText;

    switch (index) {
      case 0:
        showFullText = showFullText1;
        break;
      case 1:
        showFullText = showFullText2;
        break;
      case 2:
        showFullText = showFullText3;
        break;
      case 3:
        showFullText = showFullText4;
        break;
      case 4:
        showFullText = showFullText5;
        break;
      default:
        showFullText = false;
    }

    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: ClipOval(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(images[index]),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titles[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                descriptions[index],
                style: TextStyle(fontSize: 15),
                maxLines: showFullText ? null : 2,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  // Toggle the showFullText value on button press
                  setState(() {
                    switch (index) {
                      case 0:
                        showFullText1 = !showFullText1;
                        break;
                      case 1:
                        showFullText2 = !showFullText2;
                        break;
                      case 2:
                        showFullText3 = !showFullText3;
                        break;
                      case 3:
                        showFullText4 = !showFullText4;
                        break;
                      case 4:
                        showFullText5 = !showFullText5;
                        break;
                    }
                  });
                },
                child: Text(
                  showFullText ? 'View Less' : 'View More',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


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
                    const SizedBox(height: 9,),
                    // Title at the top left
                    Text(
                      "Why Csera?",
                      style: GoogleFonts.anekLatin(
                          fontSize: 30, fontWeight: FontWeight.bold,
                      color: AppColors().AppBarColor),

                    ),
                    const SizedBox(height: 5),
                    // Rows
                    for (int i = 0; i < titles.length; i++) ...[
                      buildRow(i),
                      SizedBox(height: 16),
                    ],
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
