import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/pallet.dart';
import 'package:myapp/screens/login/local_widgets/login_button.dart';
import 'package:myapp/screens/login/login_screen.dart';
import 'package:myapp/widgets/background_image.dart';
import 'package:myapp/screens/login/local_widgets/create_account_button.dart';
import 'package:myapp/screens/login/local_widgets/email_input.dart';
import 'package:myapp/screens/login/local_widgets/password_input.dart';
import '../../authentication_service.dart';
import 'package:myapp/authentication_service.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final AuthenticationService _firebaseAuth =
      AuthenticationService(FirebaseAuth.instance);
  final _formKey = GlobalKey<FormState>();
  String error = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'images/beach.png'),
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
              title: Text('Create Account', style: kHeadings),
              centerTitle: true),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  height: size.height * .7,
                  width: size.width * .9,
                  color: Colors.grey.shade900.withOpacity(.9),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 70),
                        Container(
                          height: size.height * 0.08,
                          width: size.width * 0.8,
                          decoration:
                              BoxDecoration(color: Colors.grey.withOpacity(.8)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextFormField(
                              style: kBodyText,
                              decoration: InputDecoration(
                                  hintText: "Email", hintStyle: kBodyText),
                              validator: (val) =>
                                  val!.isEmpty ? 'Enter an Email' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: size.height * 0.08,
                          width: size.width * 0.8,
                          decoration:
                              BoxDecoration(color: Colors.grey.withOpacity(.8)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextFormField(
                              style: kBodyText,
                              decoration: InputDecoration(
                                  hintText: "Password", hintStyle: kBodyText),
                              obscureText: true,
                              validator: (val) => val!.isEmpty
                                  ? 'Enter a password 6= chars long'
                                  : null,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          // needs fixing
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              dynamic result =
                                  await _firebaseAuth.signUp(email, password);
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/', (Route<dynamic> route) => false);
                              _firebaseAuth.signOut();
                              if (result == null) {
                                setState(
                                  () {
                                    error = 'Please supply a valid email';
                                  },
                                );
                              }
                            }
                          },
                          child: Text("Create Account",
                              style: kBodyText.copyWith(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
