import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestbox/views/profile/profile_controller.dart';
import 'package:mytestbox/views/profileediting/profile_editing.dart';
import '../../widgets/main_drawer.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 20),
                        child: CircleAvatar(
                          radius: 47,
                          backgroundImage:
                              AssetImage('assets/user_assets/profile1.jpeg'),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        right: 10,
                        child: Container(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              icon: IconButton(
                                icon: Icon(
                                  Icons.add_circle,
                                ),
                                color: Color(0xFF31762B),
                                onPressed: () {
                                  print('Hello');
                                },
                              ),
                              onPressed: () {
                                print('Hello');
                              },
                              iconSize: 30,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Business',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Color(0xFF596E79),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                        Text(
                          'owner',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Color(0xFF596E79),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Samuel Johanson',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Home Course: Pulgas Pandas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Aguascalientes, Mexico',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hcp: 12',
                      style: TextStyle(
                        color: Color(0xFF31762B),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 0, left: 25),
            margin: EdgeInsets.only(top: 15),
            width: 319,
            height: 81,
            decoration: ShapeDecoration(
                color: Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Row(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Rounds\nHosted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                            color: Color(0xFF596E79),
                            fontSize: 20,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Rounds\nPlayed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Text(
                          '52',
                          style: TextStyle(
                            color: Color(0xFF596E79),
                            fontSize: 20,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Golf\nBuddies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF595959),
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Text(
                          '100',
                          style: TextStyle(
                            color: Color(0xFF596E79),
                            fontSize: 20,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 250),
            child: Text(
              'Gallery',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
