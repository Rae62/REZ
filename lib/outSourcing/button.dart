import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  Button({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            primary: Color.fromARGB(255, 239, 113, 90),
            minimumSize: Size(400, 50)),
      ),
    );
  }
}
