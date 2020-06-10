import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:test_ui_custom_painter/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test UI Design',
      home: HomeScreen(),
    );
  }

}