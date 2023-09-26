import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:package_info_plus/package_info_plus.dart';
import '../../widgets/main_drawer.dart';
import '../../models/user.dart';
import '../../models/host.dart';
import '../../models/models.dart';
import '../../models/post.dart';
import '../../models/story.dart';
import '../../utils/logger.dart';
// import '../../services/global_data.dart';
import '../../views/home/home.dart';

class HomeController extends GetxController {
  var version = ''.obs;
  var loading = false.obs;
  final _textController = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
    // version.value = (await PackageInfo.fromPlatform()).version.toString();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  void logout() {
//     AwesomeDialog(
//       dialogType: DialogType.info,
//       animType: AnimType.topSlide,
//       title: 'appName'.tr,
//       desc: 'desea_salir'.tr,
//       showCloseIcon: true,
//       reverseBtnOrder: true,
//       btnCancelText: 'no'.tr,
//       btnCancelIcon: Icons.cancel,
//       btnCancelColor: Colors.red,
//       btnOkText: 'si'.tr,
//       btnOkIcon: Icons.check_circle,
//       btnOkColor: Colors.green,
//       context: Get.context!,
    // btnCancelOnPress: () {},
    // btnOkOnPress: () {
    //   Get.offNamed('/login');
    // }.show();
  }
}
