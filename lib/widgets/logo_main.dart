import 'package:flutter/material.dart';

class LogoMainWidget extends StatelessWidget {
  const LogoMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 260,
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage("assets/logo_main.png"),
            width: 175,
            height: 175,
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            'MYTEEBOX',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Bungee',
                fontSize: 45,
                color: Colors.white),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '.GOLF',
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bungee',
                  fontSize: 32,
                  color: Color(0xff9ED594)),
            ),
          ),
        ],
      ),
    );
  }
}
