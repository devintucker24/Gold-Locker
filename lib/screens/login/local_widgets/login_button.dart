import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/authentication_service.dart';
import 'package:myapp/pallet.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(39, 0, 15, 0),
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.38,
        decoration: BoxDecoration(),
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthenticationService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
          },
          child: Text(buttonName, style: kBodyText.copyWith(fontSize: 16)),
        ),
      ),
    );
  }
}
