import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestbox/views/profile/profile_controller.dart';
import 'package:mytestbox/views/profileediting/profile_editing.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          InkWell(
            onTap: () {
              Get.to(ProfilePage());
            },
            child: Ink(
                height: 60,
                width: 60,
                padding:
                    EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
                child: IconButton(
                  icon: Image.asset('assets/iconOption.png'),
                  onPressed: () {
                    print('Hi');
                  },
                )),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w800),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 20, top: 10),
          icon: Image.asset('assets/btnLeftMenu.png'),
          onPressed: () {
            print('Hi');
          },
        ),
      ),
    );
  }
}
