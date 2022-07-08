import 'package:flutter/material.dart';
import 'package:rez/account/Historique/orderHistory.dart';
import 'package:rez/account/Paiement/addCard.dart';
import 'package:rez/account/Paiement/payment.dart';
import 'package:rez/account/Update/UpdateScreen.dart';
import 'package:rez/account/favorites/Favorites.dart';
import 'package:rez/additionalData/faq/faqList.dart';
import 'package:rez/additionalData/mentions_légales/mentionslist.dart';
import 'package:rez/outSourcing/button.dart';
import 'package:rez/outSourcing/navArrow.dart';

class BodyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
              height: 175,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/profilepic.png'),
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
                              'https://expertphotography.b-cdn.net/wp-content/uploads/2020/05/photo-of-woman-wearing-yellow.jpg'),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jane Doe',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'janedoe@gmail.com',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                   contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "Mon profil",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => UpdateScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "Paiement",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddCard(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "Historique des commandes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OrderHistory(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "Favoris",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Favorites(),
                          // a changer
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "Mentions légales",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MentionsList(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                    title: Text(
                      "F.A.Q",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange[900],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FaqList(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Button(buttonText: 'Déconnexion'),
              ],
            ),
          ),
          
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
