import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/buttonWhite.dart';
import 'package:rez/outSourcing/navArrow.dart';

class BodyUpdate extends StatelessWidget {
  const BodyUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileMenu(),
      ],
    );
  }
}

class ProfileMenu extends StatefulWidget {
  ProfileMenu({Key? key}) : super(key: key);

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Center(
              child: Column(
              children: <Widget>[
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 10),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80'))),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('Modifier la photo',
                    style: TextStyle(color: Colors.white,fontSize: 16.0,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                      primary: Color.fromARGB(255, 239, 113, 90),
                      minimumSize: Size(200, 40)),
                  ),
                ),
                SizedBox(height: 30),
              ],
            )),
            Column(
              children: [
                Container(
                  child: TextField(
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
                SizedBox(height: 10),
                Container(
                  child: TextField(
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
                SizedBox(height: 10),
                Container(
                  child: TextField(
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
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Mot de passe",
                      prefixIcon: Icon(Icons.password),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Button(buttonText: 'Modifier les information'),
                SizedBox(height: 10),
                ButtonWhite(buttonText: 'Supprimer mon compte'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
