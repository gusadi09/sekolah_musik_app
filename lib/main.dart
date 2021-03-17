import 'package:flutter/material.dart';
import 'package:sekolah_musik_app/Login.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        //'/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        //'/signup' :(context) => SignupPage(),
      },
    );
  }
}

