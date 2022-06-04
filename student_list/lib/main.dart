import 'package:flutter/material.dart';
import 'package:student_list/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home_Screen(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ));
  }
}

//
