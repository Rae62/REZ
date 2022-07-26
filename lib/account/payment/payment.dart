import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/navArrow.dart';
import 'package:rez/outSourcing/bottomBar.dart';

class Paiement extends StatefulWidget {
  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                NavArrow(arrowText: 'Paiement'),
                SizedBox(
                  height: height / 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Méthode de paiement '),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Ajouter une carte',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 113, 90),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Login Text Clicked');
                                    }),
                            ]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/paypal.png',
                            height: 50,
                            width: 50,
                          ),
                          Text('Jane@gmail.com '),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/visa.png',
                            height: 50,
                            width: 50,
                          ),
                          Text('**** **** **** 1234 '),
                        ],
                      ),
                      SizedBox(
                        height: height / 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Code Promo '),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Aucun ici ça paie',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 113, 90),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Login Text Clicked');
                                    }),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sous total '),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '10 000 euros',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 113, 90),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Login Text Clicked');
                                    }),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Remise '),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '0 euros',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 113, 90),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Login Text Clicked');
                                    }),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total '),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '10 000 euros',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 113, 90),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Login Text Clicked');
                                    }),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 6.5,
                      ),
                      Button(
                        buttonText: 'Passer Commande',
                      ),
                      // SizedBox(
                      //   height: height / 10,
                      // ),
                    ],
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
