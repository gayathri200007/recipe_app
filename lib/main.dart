import 'package:flutter/material.dart';
import 'screens/beg/beg_login.dart';
import 'screens/beg/beg_register.dart';
import 'screens/mainscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/mainscreen.dart';
import 'screens/mainscreen.dart';
import 'screens/pro/loginpage.dart';
import 'screens/pro/register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
final routes={
  '/mainscreen': (BuildContext context) => new MainScreen(),
  '/beg': (BuildContext context) => new beg_Login(),
  '/pro': (BuildContext context) => new Login(),
  '/begreg': (BuildContext context) => new beg_reg(),
  '/proreg': (BuildContext context) => new Register(),
};
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}





