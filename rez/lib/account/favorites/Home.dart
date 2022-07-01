import 'package:flutter/material.dart';
import 'package:rez/account/favorites/favoris_card.dart';
import 'package:rez/models/todoModel.dart';
import 'package:rez/data/data-favoris.dart' as data;

class Home extends StatefulWidget {
  final List tovisit = data.tovisit;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller =
        new TabController(initialIndex: 0, length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 150, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.black,
                    iconSize: 30.0,
                  ),
                  Container(
                    child: Text(
                      "Favoris",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                    return FavorisCard(
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
