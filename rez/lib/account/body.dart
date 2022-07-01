import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rez/account/Historique/orderHistory.dart';
import 'package:rez/account/Paiement/payment.dart';
import 'package:rez/account/Update/UpdateScreen.dart';
import 'package:rez/addtionalData/faq/faqList.dart';
import 'package:rez/addtionalData/mentions_l%C3%A9gales/mentionslist.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
              height: 175,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profilepic.png'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          minRadius: 30,
                          maxRadius: 40,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                          ),
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80'),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jane Doe',
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                'janedoe@gmail.com',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                                textDirection: TextDirection.rtl,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: 10),
          ProfileMenu(
            text: "Mon profil",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateScreen(),
                ),
              );
            },
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ProfileMenu(
            text: "Paiement",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Paiement(),
                ),
              );
            },
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ProfileMenu(
              text: "Historique des commandes",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderHistory(),
                  ),
                );
              }),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ProfileMenu(text: "Favoris", press: () {}),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ProfileMenu(
              text: "Mentions Légales",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MentionsList(),
                  ),
                );
              }),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ProfileMenu(
              text: "F.A.Q",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FaqList(),
                  ),
                );
              }),
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 30,
            color: Colors.black,
          ),
          ButtonLogout(),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key, required this.text, required this.press})
      : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: <Widget>[
          TextButton(
            onPressed: press,
            child: Row(
              children: [
                Expanded(
                  child: Text(text,
                      style:
                          TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
                ),
                Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 239, 113, 90)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ButtonLogout extends StatelessWidget {
  const ButtonLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Déconnexion'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 239, 113, 90),
                      ),
                    ),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
