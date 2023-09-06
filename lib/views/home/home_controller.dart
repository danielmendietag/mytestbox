import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../services/global_data.dart';

class HomeController extends GetxController {
  var version = ''.obs;
  var loading = false.obs;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  // void logout() {
  //   GlobalData O=GlobalData();
  //   O.logout();
  // }
}
