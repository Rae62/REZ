import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Connexion extends StatefulWidget {
  @override
  State<Connexion> createState() => _ConnexionState();
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

class _ConnexionState extends State<Connexion> {
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 120, 140),
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
                          "Connexion",
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
                Container(
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Se connecter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Mot de passe oublié',
                      style: TextStyle(
                        color: Color.fromARGB(255, 239, 113, 90),
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.0,
                          color: Color.fromARGB(255, 239, 113, 90),
                        ),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      primary: Colors.white,
                      fixedSize: const Size(400, 50),
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
