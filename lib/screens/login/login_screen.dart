import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/authentication_service.dart';
import 'package:myapp/pallet.dart';
import 'package:myapp/widgets/background_image.dart';
import 'package:myapp/screens/login/local_widgets/create_account_button.dart';
import 'package:myapp/screens/login/local_widgets/email_input.dart';
import 'package:myapp/screens/login/local_widgets/password_input.dart';
import 'local_widgets/login_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'images/beach.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Gold Locker',
                    style: kHeadings.copyWith(
                        fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
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
                            style: kBodyText,
                            controller: emailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                  child: Icon(FontAwesomeIcons.envelope,
                                      size: 30, color: Clay.kClay),
                                ),
                                hintText: "Email",
                                hintStyle: kBodyText),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
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
                                  child: Icon(FontAwesomeIcons.lock,
                                      size: 30, color: Clay.kClay),
                                ),
                                hintText: 'Password',
                                hintStyle: kBodyText),
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(39, 0, 15, 0),
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.38,
                          decoration: BoxDecoration(),
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<AuthenticationService>().signIn(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                            },
                            child: Text('Log In',
                                style: kBodyText.copyWith(fontSize: 16)),
                          ),
                        ),
                      ),
                      CreateAccountButton(
                        buttonName: "Create Account",
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, 'ForgotPassword'),
                      child: Text(
                        'Forgot Password',
                        style: kBodyText.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
