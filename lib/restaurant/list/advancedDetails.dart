import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/navArrow.dart';
import '../../models/declarationValues.dart';
import 'package:rez/outSourcing/button.dart';



class AdvancedDetails extends StatelessWidget {
  // attributs
  final ToDo todo;

  AdvancedDetails({required this.todo});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavArrow(arrowText: ''),
            Header(),
             SizedBox(height: 20),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: NetworkImage(todo.imagePlat),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(todo.description,
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 111, 113, 118)),
                  ),
                  SizedBox(height: 10),
                   Text('Prix : ${todo.id} €',
                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 111, 113, 118)),
                  ),
                  SizedBox(height: 10),
                  Text('4.7/5 (214 votes)'
                ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Button(buttonText: 'Ajouter au panier'),
          ],
        ),
      ),
    );
  }
}