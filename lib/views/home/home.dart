import 'dart:ui';
import 'package:mytestbox/views/Aboutus/about_us.dart';
import 'package:mytestbox/views/chatlist/chat_list.dart';
import 'package:mytestbox/views/notifications/notifications.dart';
import 'package:mytestbox/views/whatsnew/whats_new.dart';

import '../../config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:mytestbox/models/post.dart';
import 'package:mytestbox/views/profile/profile.dart';
import 'package:mytestbox/widgets/logo_main.dart';
import 'package:mytestbox/widgets/logo_two.dart';
// import 'package:mytestbox/widgets/search_form.dart';
import '../../widgets/main_drawer.dart';
import 'package:mytestbox/widgets/post.dart';
import '../home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Get.to(ProfilePage());
            },
            child: Ink(
              width: 60,
              height: 60,
              padding: EdgeInsets.only(left: 0, top: 0, right: 20, bottom: 0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/user_assets/profile1.jpeg'),
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image.asset('assets/btnLeftMenu.png'),
            );
          }),
        ),
      ),
      drawer: MainDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Find a host',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Search a golf course',
                            style: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Container(
                              width: 350,
                              height: 57,
                              padding: EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(73))),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(73),
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: Image.asset('assets/search.png'),
                                  hintText: 'eg: Mountain, Florest',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF6B6B6B),
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              //Stories
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(
                                      50,
                                      (index) => Container(
                                        padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 10,
                                            bottom: 10),
                                        child: Container(
                                          width: 55,
                                          height: 55,
                                          decoration: ShapeDecoration(
                                              shape: OvalBorder(
                                                  side: BorderSide(
                                            width: 2,
                                            color: Color(0xFF596E79),
                                          ))),
                                          child: CircleAvatar(
                                            radius: 22,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 255, 255, 255),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/user_assets/profile3.jpeg'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Stack(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 410,
                        height: 395,
                        padding: EdgeInsets.only(
                            left: 28, right: 20, top: 0, bottom: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(246, 246, 246, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.zero,
                                bottomRight: Radius.zero)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20, top: 15),
                              child: Text(
                                'Playing partners',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mulish',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: IconButton(
                                icon: Image.asset('assets/swipeup.png'),
                                onPressed: () {
                                  print('Hello');
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      // SliverList(
                      //   delegate: SliverChildBuilderDelegate(
                      //     (context, index) {
                      //       final Post post = posts[index];
                      //       return PostContainer(post: post);
                      //     },
                      //     childCount: posts.bitLength,
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: SizedBox(
                      width: 316,
                      height: 330,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 24),
                              child: Container(
                                  width: 316,
                                  height: 392,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                          color: Color(0x1C000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0)
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 19, top: 17),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/user_assets/profile10.jpeg'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 17, left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'David Mckanzie',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: 'Muli',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                Text(
                                                  '2m ago',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF898A8D),
                                                    fontSize: 12,
                                                    fontFamily: 'Muli',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                    letterSpacing: -0.24,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 17, left: 70),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  'assets/iconOption.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 278,
                                          height: 148,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFFC4C4C4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/user_assets/post1.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      SizedBox(
                                          width: 266,
                                          child: Text(
                                            'Golf Course 1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Muli',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: SizedBox(
                                          width: 281,
                                          height: 50,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                                            style: TextStyle(
                                              color: Color(0xFF595959),
                                              fontSize: 12,
                                              fontFamily: 'Muli',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 15),
                                            child: Container(
                                              width: 57,
                                              height: 20,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                      child: Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/heart.png'),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('221'),
                                                    ],
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 15),
                                                child: Container(
                                                  width: 57,
                                                  height: 20,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                          child: Row(
                                                        children: [
                                                          Image.asset(
                                                              'assets/comments.png'),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text('12'),
                                                        ],
                                                      ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    top: 15,
                                                    right: 20),
                                                child: Container(
                                                  width: 57,
                                                  height: 20,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                          child: Row(
                                                        children: [
                                                          Image.asset(
                                                              'assets/share.png'),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text('Share'),
                                                        ],
                                                      ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            );
                          }),
                    ),
                  ),
                )
                // SearchForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
