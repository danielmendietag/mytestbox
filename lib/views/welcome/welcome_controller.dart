import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../utils/logger.dart';

class WelcomeController extends GetxController {
  // var loading = false.obs;
  // final emailField = TextEditingController(text: '');
  // final passwordField = TextEditingController(text: '');
  // var obscure = true.obs;
  // var remember = false.obs;

  // var storage = GetStorage('ordenservicio');

  // @override
  // void onInit() {
  //   loadLogin();
  //   super.onInit();
  // }

  // Future<void> loadLogin() async {

  //   var emailtr=storage.read("email");
  //   logger.i(emailtr);
  //   if(emailtr!=null){
  //     emailField.text=emailtr.toString();
  //   }
  //   var passwordtr=storage.read("password");
  //   if(passwordtr!=null){
  //     passwordField.text=passwordtr.toString();
  //   }

  // }

  // Future<void> save() async {

  // }

  // FocusNode focusNodeEmail = FocusNode();
  // FocusNode focusNodePassword = FocusNode();

  // Future<void> login() async {
  //   try{
  //     loading(true);

  //     FocusManager.instance.primaryFocus?.unfocus();
  //     if (!GetUtils.isEmail(emailField.text.trim())) {
  //       AwesomeDialog(
  //         dialogType: DialogType.error,
  //         animType: AnimType.topSlide,
  //         title: 'appName'.tr,
  //         desc: 'no_es_correo_electronico'.tr,
  //         showCloseIcon: true,
  //         context: Get.context!,
  //       ).show();

  //       focusNodeEmail.requestFocus();
  //       loading(false);
  //       return;
  //     }
  //     if (passwordField.text.isEmpty) {
  //       AwesomeDialog(
  //         dialogType: DialogType.error,
  //         animType: AnimType.topSlide,
  //         title: 'appName'.tr,
  //         desc: 'no_es_password'.tr,
  //         showCloseIcon: true,
  //         context: Get.context!,
  //       ).show();
  //       focusNodePassword.requestFocus();
  //       loading(false);
  //       return;
  //     }

  //     if (remember.value) {
  //       logger.i("Guardar datos");
  //       //Guardar los registros en el GetStorage
  //       await storage.write("email", emailField.text);
  //       await storage.write("password", passwordField.text);
  //     }

  //     final username = emailField.text.trim();
  //     final password = passwordField.text.trim();
  //     Get.toNamed('/home');

  //   }
  //   finally{
  //     loading(false);
  //   }
  // }
}
