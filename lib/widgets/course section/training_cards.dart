import 'package:csera_app/widgets/course%20section/course_container.dart';
import 'package:flutter/material.dart';

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
                imagePath: "assets/images/FaisalSection/TrainingProfilePics/ccna_profile.png",
                title: 'CCNA Certification',
                onTap: () {}),
            SizedBox(
              height: 10,
              width: 10,
            ),
            CourseCard(
                imagePath: "assets/images/FaisalSection/TrainingProfilePics/az_104_profile.png",
                title: 'Az 104',
                onTap: () {}),
            SizedBox(
              height: 10,
              width: 10,
            ),
            CourseCard(
                imagePath: "assets/images/FaisalSection/TrainingProfilePics/ccnp_profile.png",
                title: 'CCNP Certification',
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}