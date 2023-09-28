import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
import '../../widgets/logo_two.dart';
import '../otpverif/otp_verif.dart';
import '../signin/signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            ),
          ),
          child: Column(children: [
            const Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[LogoTwoWidget()],
                  ),
                )),
            Expanded(
              flex: 5,
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 0, top: 0),
                  margin: const EdgeInsets.only(
                      left: 0, right: 0, bottom: 0, top: 0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Phone number',
                        style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      Stack(
                        children: [
                          InternationalPhoneNumberInput(
                            onInputChanged: (value) {},
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                        style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                iconSize: 28,
                                icon:
                                    const Icon(Icons.arrow_back_ios_new_sharp),
                                onPressed: () {
                                  Get.to(const SignInPage());
                                }),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(111, 111, 111, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(72),
                                ),
                                minimumSize: const Size(236, 50),
                              ),
                              onPressed: () {
                                Get.to(const OtpVerification());
                              },
                              child: const Text(
                                'NEXT',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                    ],
                  )),
            ),
          ])),
    );
  }
}
