import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mytestbox/views/profile/profile.dart';
import 'package:mytestbox/views/profileediting/profile_editing.dart';
import 'package:mytestbox/widgets/main_drawer.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 86,
        centerTitle: true,
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
        title: Text(
          'Message Center',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w900,
            height: 0,
          ),
        ),
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
        children: [
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
                    hintText: 'Search...',
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
            width: 380,
            height: 490,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 24, left: 28),
                    child: Container(
                      width: 319,
                      height: 71,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 34,
                                      backgroundImage: AssetImage(
                                          'assets/user_assets/profile7.jpeg'),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.circle,
                                              color: Colors.green,
                                            )),
                                      ))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, bottom: 4),
                                    child: Text(
                                      'David Mckanzie',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: -0.24,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, bottom: 4),
                                    child: Text(
                                      'Hey, let´s check my latest trip',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.w400,
                                        height: 0.14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 0),
                                          child: Text(
                                            '2m ago',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Muli',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                              letterSpacing: -0.24,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 160,
                                        ),
                                        Text('Read',
                                            style: TextStyle(
                                              color: Color(0xFF31762B),
                                              fontSize: 12,
                                              fontFamily: 'Muli',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                              letterSpacing: -0.24,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
