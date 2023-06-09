// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:resedentialapp/screen/homepage.dart';
import 'package:resedentialapp/screen/loginpage.dart';
import 'package:resedentialapp/screen/signin.dart';
import 'package:resedentialapp/screen/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(home: LoginPage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? 'login_screen'
          : 'home_screen',
      onGenerateRoute: (settings) {
        late Widget currentScreen;
        switch (settings.name) {
          case 'registration_screen':
            currentScreen = const Register();
            break;
          case 'login_screen':
            currentScreen = const LoginPage();
            break;
          case 'home_screen':
            currentScreen = const HomePAge();
            break;
          case 'sign_in_screen':
            currentScreen = const SignIn();
            break;
          default:
            currentScreen = const SignIn();
            break;
        }
        return MaterialPageRoute(builder: (context) => currentScreen);
      },
    );
  }
}
/*
Admin :
email: admin@gmail.com
password: 123456

Sam:
email: sam@gmail.com
password: 1234567890
*/