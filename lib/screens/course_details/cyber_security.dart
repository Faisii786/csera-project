import 'package:csera_app/utility/text_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CyberDetail extends StatefulWidget {
  const CyberDetail({super.key});

  @override
  State<CyberDetail> createState() => _CyberDetailState();
}

class _CyberDetailState extends State<CyberDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                //backgroundColor: AppColors().BgColor,
                backgroundColor: Colors.white,
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  titlePadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  background: Opacity(
                    opacity: 0.9,
                    child: Image.asset(
                      'assets/images/amazon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "About Cyber Security",
                        style: GoogleFonts.anekLatin(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        child: Text(
                          Descriptions().cyberDetailText,
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
                                color: Colors.blue,
                                width: 4,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 40,
                              // backgroundImage: AssetImage("assets/images/logo/png"),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Trainer Name',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Experience: 5 years',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Speciality: Cyber Security',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Skills: Networking, Encryption',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Achievements: XYZ Certification',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  'Email: trainer@email.com',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Phone: +123 456 7890',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
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
                          Text(
                            'What You Will Learn',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Set goals',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Select an in-demand skill',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Sign up as a freelancer at different platforms',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Create and manage an effective profile on freelance platforms',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Search the right projects',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Write a winning proposal',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Manage a project once it is awarded',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Communicate with the client effectively',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Manage project payments (escrow, invoicing system)',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Retain positive feedback',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Retain existing clients',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Use Forum and Communities',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            title: Text(
                              'Manage portfolio',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
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
