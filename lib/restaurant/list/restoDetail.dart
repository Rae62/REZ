import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/navArrow.dart';
import 'package:rez/restaurant/dishs/oneWidgetPlat.dart';

import '../../models/declarationValues.dart';
import '../../data/data.dart' as data;

class RestoDetail extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<RestoDetail> createState() => _RestoDetailState();
}


class _RestoDetailState extends State<RestoDetail>
    with TickerProviderStateMixin {
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
            Button(buttonText: 'Réserver ma place'),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(right: 345),
              child: Text(
                'MENU',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OneWidgetPlat(
                      todo: widget.tovisit[index],
                    );
                  },
                  itemCount: widget.tovisit.length),
            )
          ],
        ),
      ),
    );
  }
}
