// import 'package:book_my_hall/screens/catering_list.dart';
import 'package:book_my_hall/screens/hall_main_page.dart';
import 'package:flutter/material.dart';
import 'screens/splashScreen.dart';
import 'screens/invitscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}