import 'package:flutter/material.dart';
import 'package:resumeapp/contact.dart';
import 'package:resumeapp/education.dart';
import 'package:resumeapp/experience.dart';
import 'package:resumeapp/intro.dart';
import 'package:resumeapp/personaldetail.dart';
import 'package:resumeapp/resumesplashscreen.dart';
import 'package:resumeapp/skills.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => resumespalsh(),
        '/personaldetail' : (context) => persoanldetail(),
        '/intro' : (context) => intro(),
        '/contact' : (context) => contact(),
        '/skills' : (context) => skills(),
        '/education' : (context) => education(),
        '/experience' : (context) => experience(),

      },

    );
  }
}

