// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mytestbox/models/user.dart';

// class GlobalData {
//   static User user = User();

//   void logout() {
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
//       btnCancelOnPress: () {},
//       btnOkOnPress: () {
//         Get.offNamed('/login');
//       },
//     ).show();
//   }

//   confirmBtn() {
//     Get.back();
//     Get.offNamed('/login');
//   }

//   cancelBtn() {
//     Get.back();
//   }
// }
