import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:mytestbox/views/profile/profile.dart';
// import 'package:mytestbox/widgets/search_form.dart';
import '../../widgets/main_drawer.dart';
import '../home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 60,
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
        leading: IconButton(
          padding: EdgeInsets.only(left: 30, top: 10),
          icon: Image.asset('assets/btnLeftMenu.png'),
          onPressed: () {
            controller.openDrawer();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 0),
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
                          height: 20,
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
                          height: 5,
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
                                      7,
                                      (index) => Container(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: CircleBorder(),
                                          ),
                                          child: CircleAvatar(
                                            radius: 25,
                                            child: CircleAvatar(
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
          Stack(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Container(
                    width: 410,
                    height: 360,
                    padding: EdgeInsets.only(
                        left: 28, right: 20, top: 30, bottom: 20),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero)),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Playing partners',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          IconButton(
                            icon: Image.asset('assets/swipeup.png'),
                            onPressed: () {
                              print('Hello');
                            },
                          )
                        ],
                      ),
                      //Scrollview to top
                    ),
                    //Posts
                  )),
              // SearchForm(),
            ],
          ),
        ],
      ),
    );
  }
}
