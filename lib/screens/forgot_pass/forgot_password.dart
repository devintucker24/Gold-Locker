import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/pallet.dart';
import 'package:myapp/widgets/background_image.dart';
import 'package:myapp/screens/login/local_widgets/create_account_button.dart';
import 'package:myapp/screens/login/local_widgets/email_input.dart';
import 'package:myapp/screens/login/local_widgets/password_input.dart';
import 'package:myapp/screens/login/local_widgets/login_button.dart';
import 'package:myapp/widgets/textfieldinput.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'images/beach.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.grey.shade900.withOpacity(.9),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.amber,
                ),
              ),
              title: Text('Forgot Password', style: kHeadings),
              centerTitle: true),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width * 0.9,
                      height: size.height * 0.5,
                      color: Colors.grey.shade900.withOpacity(.9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Enter your email we will send instructions to rest your password',
                            style: kBodyText,
                            textAlign: TextAlign.center,
                          ),
                          TextFieldInput(
                            icon: FontAwesomeIcons.envelope,
                            hint: "Email",
                            inputType: TextInputType.emailAddress,
                            inputAction: TextInputAction.next,
                          ),
                          Center(
                            child: LoginButton(
                              buttonName: "Create Account",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
