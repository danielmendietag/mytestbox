import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/grey_button.dart';
import '../../widgets/otp_form.dart';
import '../signin/signin.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

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
            child: Column(children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10, bottom: 0, top: 50),
                  margin: const EdgeInsets.only(
                      left: 0, right: 0, bottom: 0, top: 150),
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
                      const Text(
                        'Enter Code',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Enter the four digit code we sent to you +62 855 122 444',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const OtpForm(),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.arrow_back_ios_new_sharp),
                              onPressed: () {
                                Get.to(const SignInPage());
                              }),
                          const GreyButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
