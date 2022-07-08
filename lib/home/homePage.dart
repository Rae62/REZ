import 'package:flutter/material.dart';
import 'package:rez/home/widgetList.dart';
import 'package:rez/home/widgetOffer.dart';
import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/restaurant/list/listEvent.dart';
import 'package:rez/restaurant/list/listMenu.dart';
import 'package:rez/restaurant/list/listResto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // MainAxisSize détermine la taille de la colonne ou de la ligne le long de l'axe principal, hauteur pour la colonne et la largeur pour la ligne.
            // MainAxisSize.min : La hauteur de la colonne sera fonction de la hauteur combinée de ses enfants et la hauteur entrante du parent sera ignorée .
            mainAxisSize: MainAxisSize.min,
            children: [
              // input bar de recherche
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(5, 50, 5, 8),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Votre recherche…",
                        hintText: "Votre recherche…",
                        contentPadding: EdgeInsets.all(2),
                        // prefixIcon : Une icône qui apparaît avant le préfixe ou le texte préfixe et avant la partie modifiable du champ de texte, dans le conteneur de la décoration.
                        prefixIcon: Icon(Icons.search,
                            color: Color.fromARGB(255, 239, 113, 90)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
              ),
              // widget offre : Obtenez....
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Flexible(
                  child: ListView(
                    padding: EdgeInsets.only(bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      WidgetOffer(
                          title: 'Obtenez 5€',
                          subtitle: 'Pour votre prochaine commande',
                          image: 'assets/onglet_offre.jpg'),
                    ],
                  ),
                ),
              ),
              // liste scroll horizontal des filtres : pizza, sushi....
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/pizza_icon.png'),
                            ),
                            const Text(
                              "PIZZA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/sushi_icon.png'),
                            ),
                            const Text(
                              "SUSHI",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/pizza_icon.png'),
                            ),
                            const Text(
                              "PIZZA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/sushi_icon.png'),
                            ),
                            const Text(
                              "SUSHI",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/pizza_icon.png'),
                            ),
                            const Text(
                              "PIZZA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/sushi_icon.png'),
                            ),
                            const Text(
                              "SUSHI",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 96, 98),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              // liste Widget : Resttaurant, Menu, Evenement
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Flexible(
                  child: ListView(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      InkWell(
                        child: WidgetList(
                            name: 'RESTAURANT',
                            image: 'assets/widget_resto.jpg'),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CallWidgetResto(),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: WidgetList(
                            name: 'MENU', image: 'assets/widget_menu.jpg'),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CallWidgetMenu(),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        child: WidgetList(
                            name: 'EVENEMENT',
                            image: 'assets/widget_event.jpg'),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CallWidgetEvent(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}
