import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mytestbox/services/firebase_options.dart';

import 'config/app_themes.dart';
import 'config/app_routes.dart';
// import 'config/app_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      name: 'mytestbox', options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyTestBox());
}

Future<void> initServices() async {}

class MyTestBox extends StatelessWidget {
  const MyTestBox({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      title: "MYTEEBOX",
      theme: AppThemes.main,
      getPages: AppRoutes.routes,
      initialRoute: '/welcome',
    );
  }
}
