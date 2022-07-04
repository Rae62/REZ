import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ConfirmSendEmail extends StatefulWidget {
  @override
  State<ConfirmSendEmail> createState() => _ConfirmSendEmailState();
}

class _ConfirmSendEmailState extends State<ConfirmSendEmail> {
  TextEditingController username = TextEditingController();

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 239, 113, 90),
                      onPressed: () {},
                      child: Icon(
                        Icons.check,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    "Un Email vous a été envoyé",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}