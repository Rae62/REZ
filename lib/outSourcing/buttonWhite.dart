import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget {
  final String buttonText;
  ButtonWhite({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: Color.fromARGB(255, 239, 113, 90),
            fontSize: 22.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              side: BorderSide(width: 2.0, color: Color.fromARGB(255, 239, 113, 90),)
            ),
            
            primary: Color.fromARGB(255, 247, 246, 248),
            minimumSize: Size(400, 50)),
      ),
    );
  }
}
