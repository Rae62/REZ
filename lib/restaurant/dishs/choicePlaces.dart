import 'package:flutter/material.dart';

import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';

import '../../models/declarationValues.dart';
import '../../data/data.dart' as data;

class ChoicePlaces extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<ChoicePlaces> createState() => _ChoicePlacesState();
}

class _ChoicePlacesState extends State<ChoicePlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Nombre de places disponibles : ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 35),
                    child: Text(
                      "15",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 239, 113, 90),
                      ),
                    ),
                  ),
                  Text(
                    "Nombre de places réservées :   ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.remove_circle_outline,
                            color: Color.fromARGB(255, 239, 113, 90)),
                        Text('1',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(112, 112, 112, 1),
                            )),
                        Icon(Icons.add_circle_outline,
                            color: Color.fromARGB(255, 239, 113, 90)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                  'Réserver',
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
      bottomNavigationBar: BottomBar(),
    );
  }
}
