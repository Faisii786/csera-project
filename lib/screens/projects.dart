import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final List<String> items = List.generate(6, (index) => 'Item $index');

  List<String> title = [
    "Title:1",
    "Title:2",
    "Title:3",
    "Title:4",
    "Title:5",
    "Title:6",
  ];

  List<String> subtitle = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
  ];

  List<String> extraText = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
  ];
  List<String> images = [
    "assets/images/ShayanSection/ContainerPics/join.png",
    "assets/images/ShayanSection/ContainerPics/join.png",
    "assets/images/ShayanSection/ContainerPics/join.png",
    "assets/images/ShayanSection/ContainerPics/join.png",
    "assets/images/ShayanSection/ContainerPics/join.png",
    "assets/images/ShayanSection/ContainerPics/join.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors().AppBarColor,
        title: Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back;
          },
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext, index) {
          return Column(
            children: [
              Card(
                elevation: 8,
                shadowColor: AppColors().BgColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                        Expanded(
                          child: ExpansionTile(
                            onExpansionChanged: (isExpanded) {
                              if (isExpanded) {
                                context.findAncestorStateOfType<State<ProjectsScreen>>()?.setState(() {});
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            textColor: Colors.black,
                            title: Text(
                              title[index],
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Text(
                              subtitle[index],
                              style: TextStyle(fontSize: 15),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            tilePadding: EdgeInsets.all(5),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  extraText[index],
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
