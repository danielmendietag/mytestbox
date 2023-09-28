import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mytestbox/widgets/main_drawer.dart';

import '../profile/profile.dart';

class BecomeHostPage extends StatelessWidget {
  const BecomeHostPage({super.key});

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
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Become a host',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w900,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Search your golf course',
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
                    height: 15,
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
                      ),
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
                    width: 400,
                    height: 400,
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
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Dummy Golf Course Hosts',
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
                          padding: const EdgeInsets.only(top: 12),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/swipeup.png')),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ))
        ],
      ),
    );
  }
}
