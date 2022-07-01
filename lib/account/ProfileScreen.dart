import 'package:flutter/material.dart';
import 'package:rez/account/bodyProfile.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.grey[50],
      //     shadowColor: Colors.grey,
      //     title: Text(
      //       "Mon Compte",
      //       style: TextStyle(color: Colors.black),
      //     ),
      //     centerTitle: true),
      body: BodyProfile(),
    );
  }
}
