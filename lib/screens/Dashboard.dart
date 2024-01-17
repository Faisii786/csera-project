import 'package:csera_app/screens/course_details/cyber_security.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/course_container.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().BgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cyberdetail()));
                  }),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/cyber.jpg",
                  title: 'Cyber Security',
                  onTap: () {}),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                  imagePath: "assets/images/ai.jpeg",
                  title: 'Artificial Intellegence',
                  onTap: () {}),
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
        ),
      ),
    );
  }
}
