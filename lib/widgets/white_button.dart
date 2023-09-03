import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/signup/signup.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            side: const BorderSide(
                width: 2.0, color: Color.fromRGBO(111, 111, 111, 1)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(72),
            ),
            minimumSize: const Size(321.55, 60),
          ),
          onPressed: () {
            Get.to(const SignUpPage());
          },
          child: const Text(
            'SIGN UP',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color.fromARGB(110, 61, 61, 61)),
          )),
    );
  }
}
