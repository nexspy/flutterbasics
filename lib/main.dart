import 'package:flutter/material.dart';
import 'package:hami_limbu/pages/myhome_page.dart';
import 'pages/landing_page.dart';
import 'pages/quiz_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        primarySwatch: Colors.blue,
      ),
      home: QuizPage(),
//      home: LandingPage(),
//      home: MyHomePage(title: 'Flutter World'),
    );
  }
}


