import 'package:csera_app/screens/course_details/cyber_security.dart';
import 'package:csera_app/utility/colors.dart';
import 'package:csera_app/widgets/course_container.dart';
import 'package:flutter/material.dart';
import 'package:csera_app/widgets/lists.dart';
import 'package:csera_app/widgets/coursel.dart';
import 'package:csera_app/widgets/about_text.dart';
import 'package:csera_app/widgets/logo_container.dart';
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
          title: Text(
            'CSERA Pvt Ltd',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ],
          backgroundColor:
              Color(0xff1e3d58), // Set the background color to transparent
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'Home',
                  Icon(
                    Icons.account_balance_rounded,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'ABOUT',
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'COURSES',
                  Icon(
                    Icons.discount_rounded,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.propane_tank,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'SERVICES',
                  Icon(
                    Icons.design_services_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'CONTACT US',
                  Icon(
                    Icons.contact_phone,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.person_off,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: lists(
                  'BLOG',
                  Icon(
                    Icons.vpn_lock_outlined,
                    color: Colors.white,
                  ),
                  Colors.white,
                  Icon(
                    Icons.ad_units_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppColors().BgColor,
        body: SingleChildScrollView(
            child: Column(
              children: [
                ImageCarousel(),
                logo_container(),
                ClickMoreSection(),
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
            )));
  }
}
