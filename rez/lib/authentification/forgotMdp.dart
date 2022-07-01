import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../models/declarationValues.dart';
import 'package:rez/data/data.dart' as data;

class ForgotMdp extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<ForgotMdp> createState() => _ForgotMdpState();
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

class _ForgotMdpState extends State<ForgotMdp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 85, 140),
                // padding: EdgeInsets.only(left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                      color: Colors.black,
                      iconSize: 30.0,
                    ),
                    Container(
                      child: Text(
                        "Mot de passe oublié",
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye,
                            color: Color.fromARGB(255, 239, 113, 90),
                            size: 30)),
                    labelText: "Nouveau mot de passe",
                    prefixIcon: Icon(Icons.lock_outline),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye,
                            color: Color.fromARGB(255, 239, 113, 90),
                            size: 30)),
                    labelText: "Confirmez votre nouveau mot de passe",
                    prefixIcon: Icon(Icons.lock_outline),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    'Valider',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
