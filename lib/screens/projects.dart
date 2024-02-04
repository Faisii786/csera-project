import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final List<String> items = List.generate(6, (index) => 'Item $index');

  List<String> title = [
    "Project 1",
    "Project 2",
    "Project 3",
    "Project 4",
    "Project 5",
    "Project 6",
  ];

  List<String> subtitle = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.um dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur",
  ];

  List<bool> isExpandedList = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors().AppBarColor,
        title: Text(
          'Projects',
          style: GoogleFonts.aBeeZee(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors().AppBarColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12.0,12.0, 0.0 ,0.0),
                        child: Text(
                          title[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,color: Colors.white
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              subtitle[index],
                              style: TextStyle(fontSize: 15,color: Colors.white),
                              maxLines: isExpandedList[index] ? null : 2,
                            ),
                            if (!isExpandedList[index])
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpandedList[index] = true;
                                  });
                                },
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'View More',
                                    style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            if (isExpandedList[index])
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpandedList[index] = false;
                                  });
                                },
                                child: Text(
                                  'View Less',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
