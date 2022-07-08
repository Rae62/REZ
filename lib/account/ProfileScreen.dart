import 'package:flutter/material.dart';
import 'package:rez/account/bodyProfile.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      body: BodyProfile(),
    );
  }
}