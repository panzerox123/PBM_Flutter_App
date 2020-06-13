import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'login_page.dart';
import 'charts.dart';
import 'practice_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/practice':(context) => PracticeTestPage(),
        '/charts':(context) => Charts(),
        //'/test_handler_debug': (context) => TestUI(),
      },
      title: 'PBM',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: LoginPage(),
    );
  }
}
