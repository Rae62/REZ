import 'package:flutter/material.dart';
import 'bodyUpdate.dart';

class UpdateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            "Mon Profil",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: ProfileMenu(),
    );
  }
}
