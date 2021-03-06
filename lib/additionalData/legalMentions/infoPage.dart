import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final info;

  const InfoPage({
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 247, 246, 248),
        shadowColor: Colors.grey,
        title: Text(
          "Mentions légales",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true),
        body: Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              children: <Widget>[
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
                Text(info.texte,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14,
                    )),
              ],
            )));
  }
}
