import 'package:flutter/material.dart';



class InfoPage extends StatelessWidget {
  final info;

const InfoPage ({
  Key? key,
  required this.info,
}) : super(key: key);

@override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            children: <Widget> [
              Image.network(
                info.urlImage,
                height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(15), 
                  child: Text(  
                    info.titre,
                    style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ), 
                ),
              Text(
                info.texte,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 14,
                )
              ),
            ],
          )
      )
    );
  }
}