import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:mytestbox/views/becomehost/become_host.dart';
import '../config/app_routes.dart';
import '../views/Aboutus/about_us.dart';
import '../views/chatlist/chat_list.dart';
import '../views/notifications/notifications.dart';
import '../views/profileediting/profile_editing.dart';
import '../views/whatsnew/whats_new.dart';
import '../views/home/home.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF000000),
              Color(0xFF3A6433),
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 10, bottom: 0, top: 40, right: 0),
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  'assets/logo_main.png',
                  scale: 3.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Text(
                        'MYTEEBOX',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Bungee',
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text(
                        '.golf',
                        style: TextStyle(
                            color: Color(0xFF9ED493),
                            fontFamily: 'Bungee',
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'MYTEEBOX',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Bungee',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor:
                  Get.currentRoute == '/aboutus' ? Colors.grey[300] : null,
              onTap: () {
                Get.to(AboutUsPage());
              },
            ),
            ListTile(
              title: Text(
                'Find a Host',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(HomePage());
              },
            ),
            ListTile(
              title: Text(
                'Become a Host',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor:
                  Get.currentRoute == '/becomehost' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(BecomeHostPage());
              },
            ),
            ListTile(
              title: Text(
                'What´s new',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor:
                  Get.currentRoute == '/whatsnew' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(WhatsNewPage());
              },
            ),
            ListTile(
              title: Text(
                'Message Center',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor:
                  Get.currentRoute == '/chatlist' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(ChatListPage());
              },
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor: Get.currentRoute == '/notifications'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(NotificationsPage());
              },
              leading: Icon(
                Icons.circle,
                color: Colors.red,
                size: 18,
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              tileColor:
                  Get.currentRoute == '/profiledit' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(ProfileEditingPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
