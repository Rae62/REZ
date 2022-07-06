import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rez/account/Historique/restoCard.dart';
import 'package:rez/outSourcing/navArrow.dart';

class OrderHistory extends StatefulWidget {
  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      body: Center(
        child: Container(
          child: Column(
            children: [
              NavArrow(arrowText: 'Historique  '),
              RestoCard(),
            ],
          ),
        ),
      ),
    );
  }
}
