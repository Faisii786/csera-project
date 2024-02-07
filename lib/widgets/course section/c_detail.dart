import 'package:csera_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CoursesDetailWidget extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String imageUrl;
  final String detailText;
  final String trainerImg;
  final String trainerName;
  final String experience;
  final String speciality;
  final String skills;
  final String achievements;
  final String email;
  final String phone;
  final List<String> whatYouWillLearn;

  const CoursesDetailWidget({
    Key? key,
    required this.videoUrl,
    required this.title,
    required this.imageUrl,
    required this.detailText,
    required this.trainerImg,
    required this.trainerName,
    required this.experience,
    required this.speciality,
    required this.skills,
    required this.achievements,
    required this.email,
    required this.phone,
    required this.whatYouWillLearn,
  }) : super(key: key);

  @override
  State<CoursesDetailWidget> createState() => _CoursesDetailWidgetState();
}

class _CoursesDetailWidgetState extends State<CoursesDetailWidget> {
  bool isExpanded = false;

  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(widget.videoUrl);
    controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: true,
        showLiveFullscreenButton: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors().AppBarColor,
          onPressed: () {},
          child: Text(
            "Join",
            style: GoogleFonts.roboto(color: Colors.white),
          ),
        ),
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.white),
                //automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.white,
                expandedHeight: 200,
                //pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  background: YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: true,
                    // You can customize the size of the video player here
                    // height: 300,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.anekLatin(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        'Presented by CSERA PVT LTD',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        child: Text(
                          widget.detailText,
                          style: GoogleFonts.roboto(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 4,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(widget.trainerImg),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.trainerName,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                // Use consistent prefix for each item
                                for (String item in [
                                  widget.experience,
                                  widget.speciality,
                                  widget.skills,
                                  widget.achievements,
                                  widget.email,
                                  widget.phone,
                                ])
                                  Text(
                                    "‣ " + item,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 77, 77, 77),
                                    ),
                                  ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'What You Will Learn',
                                style: GoogleFonts.anekLatin(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors().AppBarColor,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  isExpanded
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 30,
                                  color: AppColors().AppBarColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isExpanded = !isExpanded;
                                  });
                                },
                              ),
                            ],
                          ),
                          if (isExpanded)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (String point in widget.whatYouWillLearn)
                                  ListTile(
                                    visualDensity:
                                        VisualDensity(vertical: -4.0),
                                    leading: Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ),
                                    title: Text(
                                      point,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                            255, 77, 77, 77),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                        ],
                      ),
                      Divider(),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          'CSERA PVT LTD',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDetailRow(String label, String value) {
  return Container(
    margin: EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Text(
          '$label',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Text(' $value'),
      ],
    ),
  );
}
