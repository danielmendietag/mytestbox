import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/user.dart';

class SignInController extends GetxController {
  var loading = false.obs;
  final userField = TextEditingController(text: '');
  final passwordField = TextEditingController(text: '');
}
