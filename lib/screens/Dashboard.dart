import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/utility/text_data.dart';
import 'package:csera_app/widgets/about%20section/about_container.dart';
import 'package:csera_app/widgets/appbar%20section/drawer.dart';
import 'package:csera_app/widgets/course%20section/c_detail.dart';
import 'package:csera_app/widgets/course%20section/course_container.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Image.asset(
            "assets/images/logo2.png",
            width: 80,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ],
          backgroundColor: Color(0xff1e3d58),
        ),
        drawer: MyDrawer(),
        backgroundColor: AppColors().BgColor,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              animatedContainers(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Course offered",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/amazon.png",
                  title: 'Amazon',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/cyber.jpg",
                  title: 'Cyber Security',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoursesDetailWidget(
                                    title: 'About Cyber Security',
                                    imageUrl: 'assets/images/cyber.jpg',
                                    detailText: Descriptions().cyberDetailText,
                                    trainerName: 'Riffat Razzaq',
                                    experience: '5 years',
                                    speciality: 'Cyber',
                                    skills: 'Managment',
                                    achievements: 'Gold Medalist',
                                    email: 'riffat@gmail.com',
                                    phone: '0340 8119801',
                                    whatYouWillLearn: [
                                      'bhsagdas',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                    ])));
                  }),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/ai.png",
                  title: 'Artificial Intellegence',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoursesDetailWidget(
                                    title: 'About Artifical Intellegence',
                                    imageUrl: 'assets/images/ai.png',
                                    detailText: Descriptions().cyberDetailText,
                                    trainerName: 'Riffat Razzaq',
                                    experience: '5 years',
                                    speciality: 'Cyber',
                                    skills: 'Managment',
                                    achievements: 'Gold Medalist',
                                    email: 'riffat@gmail.com',
                                    phone: '0340 8119801',
                                    whatYouWillLearn: [
                                      'bhsagdas',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                      'kskadash',
                                    ])));
                  }),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/cloud.jpg",
                  title: 'Cloud Computing',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/networking.jpeg",
                  title: 'Networking',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/python.jpeg",
                  title: 'Python',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Training Programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/python.jpeg",
                  title: 'CCNA Certification',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/python.jpeg",
                  title: 'CCNP Certification',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/python.jpeg",
                  title: 'Az 104',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )));
  }
}
