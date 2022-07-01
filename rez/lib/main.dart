import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:rez/account/favorites/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
