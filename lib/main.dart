import 'package:flutter/material.dart';

import './Screens/SignInScreen.dart';
import './Screens/SignUpScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
      },
    );
  }
}
