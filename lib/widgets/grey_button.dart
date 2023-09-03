import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/home/home.dart';

class GreyButton extends StatelessWidget {
  const GreyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 10),
      padding: EdgeInsets.only(right: 0, left: 0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(111, 111, 111, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(72),
            ),
            minimumSize: const Size(321.55, 60),
          ),
          onPressed: () {
            Get.to(const HomePage());
          },
          child: Text(
            'SIGN IN',
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
