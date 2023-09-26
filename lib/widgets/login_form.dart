import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildinputForm('Username', false),
        buildinputForm('Password', true),
      ],
    );
  }

  Padding buildinputForm(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 0),
      child: TextFormField(
        obscureText: pass ? isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.51),
              fontFamily: 'Muil',
            ),
            focusedBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromRGBO(199, 199, 199, 0.24))),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black),
                  )
                : null),
      ),
    );
  }
}
