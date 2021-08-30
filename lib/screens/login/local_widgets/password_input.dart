import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../pallet.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextEditingController passwordController = TextEditingController();
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
        child: Container(
            height: size.height * 0.06,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey[500]?.withOpacity(0.6),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: TextField(
                  style: kBodyText,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: Icon(icon, size: 30, color: Eden.kEden),
                      ),
                      hintText: hint,
                      hintStyle: kBodyText),
                  obscureText: true,
                  textInputAction: inputAction,
                ),
              ),
            )));
  }
}