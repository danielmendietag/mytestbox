import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mytestbox/views/resetpass/reset_controller.dart';
// import '../../config/app_themes.dart';
// import 'package:get/get.dart';
import '../../widgets/recover_button.dart';
import '../../widgets/recover_form.dart';

class RecoverPage extends GetView<RecoverController> {
  const RecoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Reset Password",
              style: TextStyle(
                height: 0,
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.w900,
                fontFamily: 'Muli',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please enter your email account",
              style: TextStyle(
                height: 0,
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.normal,
                fontFamily: 'Muli',
              ),
            ),
            SizedBox(
              height: 150,
            ),
            RecoverForm(),
            SizedBox(
              height: 20,
            ),
            recoverButton(),
          ],
        ),
      ),
    );
  }
}
