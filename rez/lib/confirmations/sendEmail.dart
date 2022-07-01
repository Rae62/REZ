import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 234, 232, 232),
          shadowColor: Colors.grey,
          title: Text(
            "Mot de passe oublié",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 200, 0, 20),
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
                ElevatedButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
