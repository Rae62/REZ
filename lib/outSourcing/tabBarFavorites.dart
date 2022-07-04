import 'package:flutter/material.dart';
import 'package:rez/restaurant/dishs/choiceBeverage.dart';

class TabBarFavorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TabController controller =
    //     // ignore: unnecessary_new
    //     new TabController(initialIndex: 0, length: 4, vsync: this);

    return DefaultTabController(
        length: 3,
        child: TabBar(
          labelColor: Color.fromARGB(255, 239, 113, 90),
          unselectedLabelColor: Color.fromARGB(255, 111, 115, 118),
          indicatorColor: Color.fromARGB(255, 239, 113, 90),
          isScrollable: true,
          //  controller: controller,
          indicatorWeight: 3,
          labelStyle: TextStyle(fontSize: 16),
          tabs: const <Widget>[
            Tab(
              child: Text(
                'RESTO',
                style: TextStyle(
                    fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'MENU',
                style: TextStyle(
                    fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'EVENEMENT',
                style: TextStyle(
                    fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
