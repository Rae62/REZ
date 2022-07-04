import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/buttonWhite.dart';
import 'package:rez/outSourcing/navArrow.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
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

class _RegisterState extends State<Register> {
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
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
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
                      labelText: "Nom",
                      prefixIcon: Icon(Icons.people),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: TextField(
                    controller: username,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Prenom",
                      prefixIcon: Icon(Icons.people),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: TextField(
                    controller: username,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Tel",
                      prefixIcon: Icon(Icons.phone),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: TextField(
                    controller: username,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                Container(
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
                      labelText: "Confirmation mot de passe",
                      prefixIcon: Icon(Icons.lock_outline),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Button(buttonText: 'Créer mon compte'),
                SizedBox(height: 20),
                ButtonWhite(buttonText: 'Inscription avec google'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
