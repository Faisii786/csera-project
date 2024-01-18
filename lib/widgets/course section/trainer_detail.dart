import 'package:flutter/material.dart';
import 'package:csera_app/widgets/course%20section/c_detail.dart';
import 'package:csera_app/widgets/course%20section/course_container.dart';
import 'package:csera_app/utility/text_data.dart';
class courses_cards extends StatefulWidget {
  const courses_cards({super.key});

  @override
  State<courses_cards> createState() => _courses_cardsState();
}

class _courses_cardsState extends State<courses_cards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                CourseCard(
                    imagePath: "assets/images/amazon.png",
                    title: 'Amazon',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursesDetailWidget(
                            title: 'About Amazon',
                            imageUrl: 'assets/images/it.png',
                            detailText: Descriptions().cyberDetailText,
                            trainerName: 'Riffat Razzaq',
                            experience: '5 years',
                            speciality: 'Cybersecurity',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to cybersecurity',
                              'Network security fundamentals',
                              'Web application security',
                              'Incident response and handling',
                              'Cryptography basics',
                              'Security policy and governance',
                              'Risk management in cybersecurity',
                              'Ethical hacking techniques',
                              'Security best practices',
                              'Emerging trends in cybersecurity',
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                  width: 10,
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
                            trainerName: 'Waseem Abbas Khan',
                            experience: '5 years',
                            speciality: 'Cyber Security Expert',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to Cyber Security',
                              'Network Security Best Practices',
                              'Encryption and Cryptography',
                              'Incident Response Strategies',
                              'Security Policy Implementation',
                              'Risk Management in Cyber Security',
                              'Ethical Hacking Techniques',
                              'Security Management and Governance',
                              'Emerging Trends in Cyber Security',
                              'Cyber Security Case Studies',
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                CourseCard(
                    imagePath: "assets/images/ai.png",
                    title: 'Artificial Intellegence',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursesDetailWidget(
                            title: 'About Artificial Intelligence',
                            imageUrl: 'assets/images/ai.png',
                            detailText: Descriptions()
                                .cyberDetailText, // Replace with the actual description for AI
                            trainerName: 'Riffat Razzaq',
                            experience: '5 years',
                            speciality: 'Artificial Intelligence',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to Artificial Intelligence',
                              'Machine Learning Basics',
                              'Neural Networks and Deep Learning',
                              'Natural Language Processing',
                              'Computer Vision',
                              'AI Ethics and Responsible AI',
                              'AI Applications in Industry',
                              'AI in Healthcare',
                              'AI in Finance',
                              'Future Trends in Artificial Intelligence',
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                CourseCard(
                    imagePath: "assets/images/cloud.jpg",
                    title: 'Cloud Computing',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursesDetailWidget(
                            title: 'About Cloud Computing',
                            imageUrl:
                            'assets/images/cloud.jpg', // Replace with the actual image for Cloud Computing
                            detailText: Descriptions()
                                .cyberDetailText, // Replace with the actual description for Cloud Computing
                            trainerName: 'Riffat Razzaq',
                            experience: '5 years',
                            speciality: 'Cloud Computing',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to Cloud Computing',
                              'Cloud Service Models (IaaS, PaaS, SaaS)',
                              'Cloud Deployment Models (Public, Private, Hybrid)',
                              'Cloud Security and Compliance',
                              'Virtualization and Containerization',
                              'Cloud Storage and Database Services',
                              'Scalability and Performance in the Cloud',
                              'Cost Management in Cloud Computing',
                              'Serverless Computing',
                              'Emerging Trends in Cloud Technology',
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                CourseCard(
                    imagePath: "assets/images/networking.jpeg",
                    title: 'Networking',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursesDetailWidget(
                            title: 'About Networking',
                            imageUrl:
                            'assets/images/networking.jpeg', // Replace with the actual image for Networking
                            detailText: Descriptions()
                                .cyberDetailText, // Replace with the actual description for Networking
                            trainerName: 'Riffat Razzaq',
                            experience: '5 years',
                            speciality: 'Networking',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to Networking',
                              'OSI Model and TCP/IP Protocol Suite',
                              'Network Devices and Topologies',
                              'IP Addressing and Subnetting',
                              'Routing and Switching Concepts',
                              'Wireless Networking',
                              'Network Security Fundamentals',
                              'Troubleshooting Network Issues',
                              'IPv6 and Future Trends in Networking',
                              'Hands-on Networking Labs',
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                CourseCard(
                    imagePath: "assets/images/python.jpeg",
                    title: 'Python',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursesDetailWidget(
                            title: 'About Python Programming',
                            imageUrl:
                            'assets/images/python.jpeg', // Replace with the actual image for Python
                            detailText: Descriptions()
                                .cyberDetailText, // Replace with the actual description for Python
                            trainerName: 'Riffat Razzaq',
                            experience: '5 years',
                            speciality: 'Python Programming',
                            skills: 'Management',
                            achievements: 'Gold Medalist',
                            email: 'riffat@gmail.com',
                            phone: '0340 8119801',
                            whatYouWillLearn: [
                              'Introduction to Python',
                              'Python Syntax and Basics',
                              'Data Types and Variables',
                              'Control Flow and Loops',
                              'Functions and Modules',
                              'File Handling in Python',
                              'Object-Oriented Programming in Python',
                              'Web Development with Flask',
                              'Data Science with Python',
                              'Automation and Scripting',
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cousrse_card2 extends StatefulWidget {
  const cousrse_card2({super.key});

  @override
  State<cousrse_card2> createState() => _cousrse_card2State();
}

class _cousrse_card2State extends State<cousrse_card2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CourseCard(
                imagePath: "assets/images/python.jpeg",
                title: 'CCNA Certification',
                onTap: () {}),
            SizedBox(
              height: 10,
              width: 10,
            ),
            CourseCard(
                imagePath: "assets/images/python.jpeg",
                title: 'CCNP Certification',
                onTap: () {}),
            SizedBox(
              height: 10,
              width: 10,
            ),
            CourseCard(
                imagePath: "assets/images/python.jpeg",
                title: 'Az 104',
                onTap: () {}),
            SizedBox(
              height: 10,
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

