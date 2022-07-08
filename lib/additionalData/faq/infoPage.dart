import 'package:flutter/material.dart';
import 'package:rez/outSourcing/navArrow.dart';

class InfoPage extends StatelessWidget {
  final info;

  const InfoPage({
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              children: <Widget>[
                NavArrow(arrowText: 'F.A.Q'),
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
                  child: Text(info.text,
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(info.text2,
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(info.text3,
                      style: const TextStyle(
                        fontSize: 14,
                      )),
                ),
              ],
            )));
  }
}
