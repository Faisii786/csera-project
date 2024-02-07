import 'package:csera_app/widgets/course%20section/c_detail.dart';
import 'package:csera_app/widgets/course%20section/course_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class training_cards extends StatefulWidget {
  const training_cards({super.key});

  @override
  State<training_cards> createState() => _training_cardsState();
}

class _training_cardsState extends State<training_cards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CourseCard(
                imagePath:
                    "assets/images/FaisalSection/TrainingProfilePics/ccna_profile.png",
                title: 'CCNA Certification',
                onTap: () {
                  Get.to(() => CoursesDetailWidget(
                          videoUrl:
                              'https://youtu.be/lrVXZK4k4KA?si=RbLDtMpAWQl-uetu',
                          title: 'CCNA Certification Course',
                          imageUrl: '',
                          detailText:
                              'Welcome to CSERA Pvt Ltds CCNA Certification Course! 🌐 Prepare for success in the world of networking with our comprehensive Cisco Certified Network Associate (CCNA) exam preparation series. Join our expert instructors as they guide you through the essential topics required to ace the CCNA exam and build a strong foundation in networking',
                          trainerImg: '',
                          trainerName: '',
                          experience: '',
                          speciality: '',
                          skills: '',
                          achievements: '',
                          email: '',
                          phone: '',
                          whatYouWillLearn: [
                            'Network Fundamentals , Routing and Switching Concepts , IPv4 and IPv6 Addressing , Cisco IOS Operation and Configuration , VLANs and Inter-VLAN Routing OSPF and EIGRP Routing Protocols , Network Security Fundamentals , Troubleshooting and WAN Technologies'
                          ]));
                }),
            SizedBox(
              height: 10,
              width: 10,
            ),
            // CourseCard(
            //     imagePath: "assets/images/FaisalSection/TrainingProfilePics/az_104_profile.png",
            //     title: 'Az 104',
            //     onTap: () {}),
            // SizedBox(
            //   height: 10,
            //   width: 10,
            // ),
            CourseCard(
                imagePath:
                    "assets/images/FaisalSection/TrainingProfilePics/ccnp_profile.png",
                title: 'CCNP Certification',
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
