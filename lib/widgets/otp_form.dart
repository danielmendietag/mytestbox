import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 72,
            width: 72,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin1) {},
              decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(199, 199, 199, 0.24),
                  filled: true,
                  hintText: '0'),
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w900,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 72,
            width: 72,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin2) {},
              decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(199, 199, 199, 0.24),
                  filled: true,
                  hintText: '1'),
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w900,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 72,
            width: 72,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin3) {},
              decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(199, 199, 199, 0.24),
                  filled: true,
                  hintText: '2'),
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w900,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 72,
            width: 72,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin4) {},
              decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(199, 199, 199, 0.24),
                  filled: true,
                  hintText: '3'),
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w900,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
