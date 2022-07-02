import 'package:flutter/material.dart';
import 'package:rez/account/favorites/favorite_card.dart';
import 'package:rez/models/todoModel.dart';
import 'package:rez/outSourcing/navArrow.dart';
import 'package:rez/data/data-favoris.dart' as data;

class Favorites extends StatefulWidget {
  final List tovisit = data.tovisit;

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller =
        new TabController(initialIndex: 0, length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
                Arrow(arrowText: 'Favoris'),
            Container(
              child: TabBar(
                  labelColor: Color.fromARGB(255, 239, 113, 90),
                  unselectedLabelColor: Color.fromARGB(255, 111, 115, 118),
                  indicatorColor: Color.fromARGB(255, 239, 113, 90),
                  isScrollable: true,
                  controller: controller,
                  indicatorWeight: 3,
                  labelStyle: TextStyle(fontSize: 16),
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'RESTO',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'MENU',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'EVENEMENT',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return favoriteCard(
                      todo: widget.tovisit[index],
                    );
                  },
                  itemCount: widget.tovisit.length),
            ),
          ],
        ),
      ),
    );
  }
}
