import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rez/outSourcing/button.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),

      // appBar
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: const Text(
            "Ajouter une carte bancaire",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),

      // -------------------------------------- Debut du container ------------ //
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 200, 30, 0),
        child: Column(
          children: [
            Flexible(
              // ----------------- input du numero de carte bancaire
              child: TextField(
                // clavier de type numérique
                keyboardType: TextInputType.number,
                inputFormatters: [
                  // permet d'accepter uniquement les nombres dans l'input
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  // limite le nombre de caractères a 16
                  LengthLimitingTextInputFormatter(16),
                ],
                decoration: const InputDecoration(
                    labelText: "Numéro de la carte",
                    hintText: "1234 1234 1234 1234",
                    contentPadding: EdgeInsets.all(2),
                    // prefixIcon : Une icône qui apparaît avant le préfixe ou le texte préfixe
                    // et avant la partie modifiable du champ de texte, dans le conteneur de la décoration.
                    prefixIcon: Icon(Icons.credit_card,
                        color: Color.fromARGB(255, 239, 113, 90)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),

            // -------------------------------- Debut du deuxieme container ------------ //
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              child: Row(
                children: [
                  Flexible(
                    // ----------------- input de la date d'expiration
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        LengthLimitingTextInputFormatter(16),
                      ],
                      decoration: InputDecoration(
                          labelText: "Date d'expiration",
                          hintText: "01/22",
                          contentPadding: EdgeInsets.all(2),
                          prefixIcon: Icon(Icons.date_range,
                              color: Color.fromARGB(255, 239, 113, 90)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    flex: 1,
                  ),

                  // ------------------ separation entre les input date et cvc ------------ //
                  SizedBox(
                    width: 20,
                  ),

                  Flexible(
                    // ----------------- input du cvc
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        LengthLimitingTextInputFormatter(3),
                      ],
                      decoration: InputDecoration(
                          labelText: "CVC",
                          hintText: "123",
                          contentPadding: EdgeInsets.all(2),
                          prefixIcon: Icon(Icons.lock,
                              color: Color.fromARGB(255, 239, 113, 90)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Button(buttonText: 'Enregistrer'),
          ],
        ),
      ),
    );
  }
}
