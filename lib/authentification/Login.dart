import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/buttonWhite.dart';
import 'package:rez/outSourcing/navArrow.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
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
        color: Colors.blueAccent,
        width: 2,
      ));
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();

  @override
  void initState() {
    username.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                NavArrow(arrowText: 'Connexion'),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: TextField(
                    controller: username,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.people),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye,
                            color: Color.fromARGB(255, 239, 113, 90), size: 30),
                      ),
                      labelText: "Mot de passe",
                      prefixIcon: Icon(Icons.lock_outline),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.check_box_outline_blank_outlined),
                        onPressed: () {},
                        color: Colors.black,
                        iconSize: 24.0,
                      ),
                      Container(
                        child: Text(
                          "Rester connecté",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Button(buttonText: 'Se connecter'),
                SizedBox(height: 20),
                ButtonWhite(buttonText: 'Mot de passe oublié'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
