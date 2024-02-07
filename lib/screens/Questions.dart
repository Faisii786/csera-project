import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final List<FAQItem> faqList = [
    FAQItem(
      question: 'What is Csera',
      answer:
        "CSERA is an IT company specializing in cybersecurity and software development services, as well as providing courses in these fields. We aim to empower individuals and organizations with the knowledge and tools necessary to navigate the ever-evolving landscape of technology securely",
    ),
    FAQItem(
      question: 'What services does CSERA offer',
      answer:
      'CSERA offers a range of services including cybersecurity consulting, penetration testing, secure software development, threat intelligence, incident response, and more. Additionally, we provide comprehensive training courses covering various aspects of cybersecurity and software development',
    ),
    FAQItem(
      question: 'Who can benefit from CSERAs services and courses',
      answer:
      'CSERA"s services are designed to cater to individuals, businesses, government agencies, and educational institutions seeking to enhance their cybersecurity posture and software development capabilities. Our courses are suitable for beginners looking to enter the field, as well as professionals seeking to upgrade their skills',
    ),
    FAQItem(
      question: "How experienced are CSERA's instructors",
      answer:
      "Our instructors are seasoned professionals with extensive experience in cybersecurity, software development, and related fields. They bring a wealth of practical knowledge and industry insights to our courses, ensuring that students receive high-quality education and training",
    ),
    FAQItem(
      question: "What sets CSERA apart from other IT companies?",
      answer:
      "CSERA distinguishes itself through its commitment to excellence, innovation, and continuous learning. We prioritize customer satisfaction and strive to deliver tailored solutions that meet the unique needs and challenges of each client. Our comprehensive approach combines cutting-edge technology with best practices to deliver superior results.",
    ),
    FAQItem(
      question: "Can CSERA customize its services to suit specific requirements?",
      answer:
      "Yes, absolutely. We understand that every organization has unique needs and priorities when it comes to cybersecurity and software development. That's why we offer customizable solutions tailored to fit each client's objectives, budget, and timeline",
    ),
    FAQItem(
      question: "Are CSERA's courses suitable for beginners with no prior experience?",
      answer:
      "Yes, our courses are designed to accommodate learners of all skill levels, including beginners with no prior experience in cybersecurity or software development. We offer introductory courses that provide foundational knowledge and gradually progress to more advanced topics.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent.shade400,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent.shade400, Color(0xff1e3d58)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'How can we help you?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: faqList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                         faqList[index].question,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        backgroundColor: Colors.black26,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              faqList[index].answer,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2,color: Colors.green,),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({
    required this.question,
    required this.answer,
  });
}