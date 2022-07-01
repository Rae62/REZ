import 'package:flutter/material.dart';

Widget Header() {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          height: 280,
          child: Stack(
            children: <Widget>[
              Image.asset('assets/Header.jpg',fit: BoxFit.cover),
              Positioned(
                bottom: 10,
                left: 70,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 290,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Restaurant Mélodie ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Cuisine Francaise',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.location_pin,
                                  color: Color.fromARGB(255, 225, 35, 35)),
                              Text('Rue Roger Salengro 62260 Auchel  ',
                                  style: TextStyle(fontSize: 12)),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,
                                color: Color.fromARGB(255, 225, 35, 35)),
                            Text(('  4.9  (230 Votes)'),
                                style: TextStyle(
                                    fontStyle: FontStyle.italic, fontSize: 10)),
                          ],
                        ),
                        Text('Voir les commentaires'),
                        Icon(Icons.favorite,
                            color: Color.fromARGB(255, 95, 94, 94)),
                      ]),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
