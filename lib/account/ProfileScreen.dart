import 'package:flutter/material.dart';
import 'package:rez/account/bodyProfile.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BodyProfile(),
    );
  }
}
