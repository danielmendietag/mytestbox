import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestbox/views/welcome/welcome_controller.dart';
import '../../config/app_themes.dart';
import '../../widgets/logo_main.dart';
import '../signin/signin.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF000000),
                Color(0xFF3A6433),
              ],
            )),
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const LogoMainWidget(),
                      kSpacerH,
                      const Text(
                        'A whole lot more GOLF!',
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 14,
                            color: Color(0xffFFFFFF)),
                      ),
                      kSpacerH,
                      CarouselSlider(
                        items: const [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Golfers wants just one thing...to play more golf! Get invited to the course you’ve always wanted to play or simply find a golf partner.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 14,
                                    color: Color(0xffffffff))),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Golfers wants just one thing...to play more golf! Get invited to the course you’ve always wanted to play or simply find a golf partner.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 14,
                                    color: Color(0xffffffff))),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Golfers wants just one thing...to play more golf! Get invited to the course you’ve always wanted to play or simply find a golf partner.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 14,
                                    color: Color(0xffffffff))),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Golfers wants just one thing...to play more golf! Get invited to the course you’ve always wanted to play or simply find a golf partner.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 14,
                                    color: Color(0xffffffff))),
                          )
                        ],
                        //Slider Container properties
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 20 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                        ),
                      ),
                      kSpacerH,
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xff596E79),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(130), // <-- Radius
                            ),
                            minimumSize: const Size(207, 60),
                          ),
                          onPressed: () {
                            Get.to(
                              const SignInPage(),
                            );
                          },
                          child: Text(
                            'getstarted'.tr,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 18,
                                color: Color(0xff596E79)),
                          )),
                    ]))));
  }
}
