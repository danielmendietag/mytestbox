import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mytestbox/views/profile/profile.dart';
import 'package:mytestbox/widgets/main_drawer.dart';
import 'package:mytestbox/widgets/recover_form.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    Get.to(ProfileEditingPage());
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
              fontFamily: 'Muli',
              fontWeight: FontWeight.w900),
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.only(left: 50, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 0),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Last name',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Nickname',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 20,
                      right: 0,
                      left: 10,
                      bottom: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Image.asset(
                      'assets/search.png',
                      scale: 1,
                    ),
                    hintText: 'Golf Course',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Type of host',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 0, bottom: 5),
                width: 318,
                height: 62,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                    borderRadius: BorderRadius.circular(63),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(73),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Handicap',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B6B6B),
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
