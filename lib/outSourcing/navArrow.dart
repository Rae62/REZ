import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final String arrowText;
  Arrow({required this.arrowText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 247, 246, 248),
        shadowColor: Colors.grey,
        title: Text(
          arrowText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true);
  }
}
