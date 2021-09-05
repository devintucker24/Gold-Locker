import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pallet.dart';

class EmailInput extends StatelessWidget {
  EmailInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.6),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Icon(icon, size: 30, color: Eden.kEden),
                  ),
                  hintText: hint,
                  hintStyle: kBodyText),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}
