import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// import '../../utils/logger.dart';

class RecoverController extends GetxController {
  var loading = false.obs;
  final emailField = TextEditingController(text: '');

  var storage = GetStorage('ordenservicio');

  @override
  void onInit() {
    loadLogin();
    super.onInit();
  }

  Future<void> loadLogin() async {
    // var emailtr=storage.read("email");
    // logger.i(emailtr);
    // if(emailtr!=null){
    //   emailField.text=emailtr.toString();
    // }
  }

  FocusNode focusNodeEmail = FocusNode();
}
