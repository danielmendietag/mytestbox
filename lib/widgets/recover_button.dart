import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/signin/signin.dart';

class recoverButton extends StatelessWidget {
  const recoverButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 10),
      padding: EdgeInsets.only(right: 0, left: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(111, 111, 111, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(72),
            ),
            minimumSize: const Size(321.55, 60),
          ),
          onPressed: () {
            Get.to(const SignInPage());
          },
          child: Text(
            'RESET PASSWORD',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color.fromRGBO(255, 255, 255, 1)),
          )),
    );
  }
}
