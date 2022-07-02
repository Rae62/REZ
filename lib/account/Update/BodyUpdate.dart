import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';

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
  TextField firstnameText = new TextField(
    decoration: InputDecoration(
      hintText: 'Doe',
      contentPadding: EdgeInsets.all(8.0),
      filled: true,
      fillColor: Color.fromARGB(255, 213, 218, 222),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
    ),
  );
  TextField lastnameText = new TextField(
    decoration: InputDecoration(
      hintText: 'Jane',
      contentPadding: EdgeInsets.all(8.0),
      filled: true,
      fillColor: Color.fromARGB(255, 213, 218, 222),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
    ),
  );
  TextField telText = new TextField(
    decoration: InputDecoration(
      hintText: '00.00.00.00.00',
      contentPadding: EdgeInsets.all(8.0),
      filled: true,
      fillColor: Color.fromARGB(255, 213, 218, 222),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
    ),
  );
  TextField mailText = new TextField(
    decoration: InputDecoration(
      hintText: 'janedoe@gmail.com',
      contentPadding: EdgeInsets.all(8.0),
      filled: true,
      fillColor: Color.fromARGB(255, 213, 218, 222),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
    ),
  );
  TextField passwordText = new TextField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: '••••••••',
      contentPadding: EdgeInsets.all(8.0),
      filled: true,
      fillColor: Color.fromARGB(255, 213, 218, 222),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25),
        
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Center(
                child: Stack(
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
                Button(buttonText: 'Modifier la photo'),
                SizedBox(
                  height: 200,
                ),
              ],
            )),
            Column(
              children: [
                Text('Nom'),
                lastnameText,
                SizedBox(height: 15),
                Text('Prénom'),
                firstnameText,
                SizedBox(height: 15),
                Text('Tel'),
                telText,
                SizedBox(height: 15),
                Text('Email'),
                mailText,
                SizedBox(height: 15),
                Text('Mot de passe'),
                passwordText,
                SizedBox(height: 15),
                Button(buttonText: 'Modifier les informations'),
                SizedBox(height: 15),
                Button(buttonText: 'Supprimer mon compte'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
