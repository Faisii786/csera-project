import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'joinNow.dart';

class whyCsera extends StatefulWidget {
  const whyCsera({Key? key});

  @override
  State<whyCsera> createState() => _whyCseraState();
}

class _whyCseraState extends State<whyCsera> {
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
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),

                    // Circle Avatar with Image
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/your_avatar_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Innovation at the Core',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'CSERA is an innovative IT services and trainingteam of experts and a relentless commitment to excellence, we ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/your_avatar_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'World-Class Instructors',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'CSERA is an innovative IT services and trainingteam of experts and a relentless commitment to excellence, we ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/your_avatar_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Internship to Job Opportunity',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'CSERA is an innovative IT services and trainingteam of experts and a relentless commitment to excellence, we ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/your_avatar_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Complete Learning Path for Beginners',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'CSERA is an innovative IT services and trainingteam of experts and a relentless commitment to excellence, we ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/your_avatar_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hands-On Practical Learning',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'CSERA is an innovative IT services and trainingteam of experts and a relentless commitment to excellence, we ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),


                    // Join Now Button
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
