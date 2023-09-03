import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/signin/signin.dart';

class RecoverForm extends StatefulWidget {
  const RecoverForm({super.key});

  @override
  State<RecoverForm> createState() => _RecoverFormState();
}

class _RecoverFormState extends State<RecoverForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildinputForm("Username"),
      ],
    );
  }

  Padding buildinputForm(String label) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.51),
            fontFamily: 'Muil',
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(199, 199, 199, 0.24))),
        ),
      ),
    );
  }
}
