import 'package:flutter/material.dart';

class Paiement extends StatefulWidget {
  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            "Moyen de paiement",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
    );
  }
}
