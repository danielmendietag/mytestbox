// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/grey_button.dart';
import '../../widgets/login_form.dart';
import '../../widgets/logo_two.dart';
import '../../widgets/white_button.dart';
import '../resetpass/reset_password.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
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
                        left: 20, right: 0, bottom: 0, top: 0),
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            'Welcome Back',
                            style: TextStyle(
                              height: 0,
                              color: Colors.black87,
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Muli',
                            ),
                          ),
                          const Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Muli',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //Login form from loginform.dart
                          const LogInForm(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons
                                  .check_box_outline_blank), //Icon for remember me option
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    fontFamily: 'Muli',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(89, 89, 89, 1)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: GreyButton(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 0, bottom: 0, top: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Did you forget your password?',
                                  style: TextStyle(
                                      fontFamily: 'Muli',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(31, 31, 31, 1)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(const RecoverPage());
                                  },
                                  child: const Text(
                                    'Reset Here',
                                    style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            Color.fromRGBO(111, 111, 111, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const WhiteButton(),
                        ]),
                  ))
            ],
          )),
    );
  }
}
