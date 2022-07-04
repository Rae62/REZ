import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/delayed_animation.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/rezBackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1000,
                child: Container(
                  height: 170,
                  child: Image.asset('assets/rezLogo.png'),
                ),
              ),
              DelayedAnimation(
                delay: 1700,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text("Réservez un restaurant à proximité.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 400,
                  child: Button(buttonText: 'GET STARTED'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
