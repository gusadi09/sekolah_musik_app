import 'package:flutter/material.dart';
import 'package:sekolah_musik_app/Login.dart';
import 'package:sekolah_musik_app/profile.dart';
import 'package:sekolah_musik_app/registrasi.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/regist',
      debugShowCheckedModeBanner: false,
      routes: {
        '/profile': (context) => ProfilePage(),
        '/login': (context) => LoginPage(),
        '/regist' :(context) => RegisterPage(),
      },
    );
  }
}

