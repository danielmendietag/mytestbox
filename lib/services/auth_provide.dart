// import 'package:flutter/material.dart';

// class AuthProvider extends ChangeNotifier {
//   bool _isSignedIn = false;
//   bool get isSignedIn => isSignedIn;

//   AuthProvider() {
//     checkSignIn();
//   }

//   void checkSign() async {
//     final SharedPreferences s = await SharedPreferences.getInstance();
//     _isSignedIn = s.getBool("is_signedin") ?? false;
//     notifyListeners();
//   }
// }
