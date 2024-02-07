import 'package:csera_app/screens/Dashboard.dart';
import 'package:csera_app/screens/about%20section/whatisCsera.dart';
import 'package:csera_app/widgets/contact%20section/contact%20us.dart';
import 'package:get/get.dart';

class BottombarController extends GetxController{
  Rx<int> selectedindex=0.obs;

  List tabs=[
    DashboardScreen(),
    whatisCsera(),
    whatisCsera(),
    ContactUs(),
  ];

  increase(int value){
    selectedindex.value=value;
  }
}