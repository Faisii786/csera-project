import 'package:flutter/material.dart';

class ClickMoreSection extends StatefulWidget {
  @override
  _ClickMoreSectionState createState() => _ClickMoreSectionState();
}

class _ClickMoreSectionState extends State<ClickMoreSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white24.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About CsEra",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
              ),),
              ExpandableText(
                text:
               'About Company CSERA is an innovative IT services and training company committed to redefining the digital landscape. With a dedicated team of experts and a relentless commitment to excellence, we excel in delivering cutting-edge solutions and comprehensive training programs across various domains of information technology. Our core focus is on Cyber Security, Artificial Intelligence, Internet of things, and Block chain Services, where we offer an array of solutions to build and safeguard your digital assets. Along with these, we provide trainings and services in Digital Marketing, Software Development, Cloud Services, Graphic Designing, Web Development, network and infrastructure services and many more. Whether you need tailored digital marketing strategies, custom software solutions, cybersecurity defenses, blockchain innovations, or cloud technology implementations, we are your partner in this transformative journey. With a wide array of certifications available, individuals can acquire industry- recognized credentials in cybersecurity, programming and development, networking, blockchain, artificial intelligence, and cloud computing, making them highly skilled and competitive in the IT landscape. In a short span, we have made significant strides in transforming knowledge into expertise, helping businesses thrive and individuals prosper in this fast-paced digital era.',
                maxLines: 2,
                isExpanded: isExpanded,
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
              SizedBox(height: 10),
              // Additional content can be added here
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandableText extends StatelessWidget {
  final String text;
  final int maxLines;
  final bool isExpanded;
  final Function onTap;

  ExpandableText({
    required this.text,
    required this.maxLines,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          duration: Duration(milliseconds: 300),
          firstChild: Text(
            text,
            maxLines: isExpanded ? null : maxLines,
            overflow: TextOverflow.fade,
          ),
          secondChild: Text(
            text.substring(0, text.indexOf(' ', 50)) + '...',
            maxLines: maxLines,
            overflow: TextOverflow.fade,
          ),
          crossFadeState:
          isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              isExpanded ? 'Click to show less' : 'Click to show more',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
