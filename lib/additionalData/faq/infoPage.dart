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
      appBar: AppBar(
      elevation: 0,
      shadowColor: Colors.grey,
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      title: Text(
        "Mon Compte",
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true),
      body: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            children: <Widget> [
              Image.network(
                info.urlImage,
                height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(10), 
                  child: Text(  
                    info.title,
                    style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ), 
                ),
                Padding(
                  padding: EdgeInsets.all(10), 
                  child: Text(
                  info.text,
                  style: const TextStyle(
                  fontSize: 14,
                  )
                ), 
              ),
              Padding(
                  padding: EdgeInsets.all(10), 
                  child: Text(
                  info.text2,
                  style: const TextStyle(
                  fontSize: 14,
                  )
                ), 
              ),
              Padding(
                  padding: EdgeInsets.all(10), 
                  child: Text(
                  info.text3,
                  style: const TextStyle(
                  fontSize: 14,
                  )
                ), 
              ),
            ],
          )
      )
    );
  }
}