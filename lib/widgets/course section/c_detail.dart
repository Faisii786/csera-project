import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesDetailWidget extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String detailText;
  final String trainerName;
  final String experience;
  final String speciality;
  final String skills;
  final String achievements;
  final String email;
  final String phone;
  final List<String> whatYouWillLearn;

  const CoursesDetailWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.detailText,
    required this.trainerName,
    required this.experience,
    required this.speciality,
    required this.skills,
    required this.achievements,
    required this.email,
    required this.phone,
    required this.whatYouWillLearn,
  }) : super(key: key);

  @override
  State<CoursesDetailWidget> createState() => _CoursesDetailWidgetState();
}

class _CoursesDetailWidgetState extends State<CoursesDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  titlePadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  background: Opacity(
                    opacity: 0.9,
                    child: Image.asset(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.anekLatin(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        child: Text(
                          widget.detailText,
                          style: GoogleFonts.roboto(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 4,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/images/ai.png"),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.trainerName,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Experience: " + widget.experience,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Speciality: " + widget.speciality,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Skills: " + widget.skills,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Achievements: " + widget.achievements,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                Text(
                                  "Email: " + widget.email,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Contact: " + widget.phone,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77)),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What You Will Learn',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          // Loop through the learning points
                          for (String point in widget.whatYouWillLearn)
                            ListTile(
                              leading: Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                              title: Text(
                                point,
                                style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        const Color.fromARGB(255, 77, 77, 77)),
                              ),
                            ),
                        ],
                      ),
                      Divider(),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
