import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/navArrow.dart';

class SendEmail extends StatefulWidget {
  @override
  State<SendEmail> createState() => _SendEmailState();
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    //Outline border type for TextFeild
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.redAccent,
      width: 2,
    ),
  );
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Colors.greenAccent,
        width: 3,
      ));
}

class _SendEmailState extends State<SendEmail> {
  TextEditingController username = TextEditingController();

  @override
  void initState() {
    username.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Arrow(arrowText: 'Mot de passe oublié'),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: TextField(
                      controller: username,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.people),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                ),
                Button(buttonText: 'Valider'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
