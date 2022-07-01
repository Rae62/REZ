import 'package:flutter/material.dart';
import 'package:rez/outSourcing/bottomBar.dart';

class ConfirmPaiement extends StatefulWidget {
  @override
  State<ConfirmPaiement> createState() => _ConfirmPaiementState();
}

class _ConfirmPaiementState extends State<ConfirmPaiement> {
  TextEditingController username = TextEditingController();

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 170, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 239, 113, 90),
                      onPressed: () {},
                      child: Icon(
                        Icons.check,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Text(
                    "Merci pour votre paiement .                       Celui-ci a bien été confirmé.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    "Un mail contenant votre numéro                    de réservation vous sera transmis",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Consulter mon historique',
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
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
