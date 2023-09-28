import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestbox/views/home/home.dart';
import 'package:mytestbox/views/welcome/welcome.dart';
import 'package:mytestbox/widgets/main_drawer.dart';

class WhatsNewPage extends StatelessWidget {
  const WhatsNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 86,
          centerTitle: true,
          title: Text(
            'What´s new',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w900,
              height: 0,
            ),
          ),
        ),
        drawer: MainDrawer(),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero)),
            height: 620,
            width: 420,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 7, left: 20),
                      child: TextButton(
                        onPressed: () {
                          Get.to(WelcomePage());
                        },
                        child: Text(
                          'Hosts',
                          style: TextStyle(
                            color: Color(0xFF596E79),
                            fontSize: 18,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7, left: 20),
                      child: TextButton(
                        onPressed: () {
                          Get.to(WelcomePage());
                        },
                        child: Text(
                          'Courses',
                          style: TextStyle(
                            color: Color(0xFFBFBFBF),
                            fontSize: 18,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7, left: 20),
                      child: TextButton(
                        onPressed: () {
                          Get.to(WelcomePage());
                        },
                        child: Text(
                          'Matches',
                          style: TextStyle(
                            color: Color(0xFFBFBFBF),
                            fontSize: 18,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 3, left: 10, right: 0),
                      child: IconButton(
                          onPressed: () {
                            log('Hello' as num);
                          },
                          icon: Image.asset('assets/swipeupswipedown.png')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 316,
                  height: 498,
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
                                                  BorderRadius.circular(20))),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
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
                                    padding: const EdgeInsets.only(left: 10),
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
                                                left: 20, top: 15, right: 20),
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
              ],
            ),
          ),
        ));
  }
}
