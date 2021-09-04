// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pallet.dart';
import 'package:myapp/screens/forgot_pass/forgot_password.dart';
import 'package:provider/provider.dart';
import 'package:myapp/authentication_service.dart';
import 'screens/login/login_screen.dart';
import 'screens/screen.dart';
import 'screens/create_account/create_account.dart';
import 'screens/home_page/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
        title: 'Gold Locker',
        theme: ThemeData(
            textTheme: GoogleFonts.loraTextTheme(),
            primarySwatch: Clay.kClay,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: '/',
        routes: {
          '/': (context) => AuthenticationWrapper(),
          'ForgotPassword': (context) => ForgotPassword(),
          'CreateAccount': (context) => CreateAccount(),
        },
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    // ignore: unnecessary_null_comparison
    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginScreen();
  }
}
