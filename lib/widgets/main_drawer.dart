import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Myteebox'),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text('Home'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/');
            },
          ),
          ListTile(
            title: Text('Become a Host'),
            tileColor:
                Get.currentRoute == '/become_host' ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/become_host');
            },
          ),
          ListTile(
            title: Text('Playing partners'),
            tileColor: Get.currentRoute == '/playing_partners'
                ? Colors.grey[300]
                : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/playing_partners');
            },
          ),
          ListTile(
            title: Text('Settings'),
            tileColor:
                Get.currentRoute == '/settings' ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/settings');
            },
          ),
        ],
      ),
    );
  }
}
