import 'package:flutter/material.dart';
import 'package:rez/restaurant/dishs/choiceBeverage.dart';

class TabBarResto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TabController controller =
    //     // ignore: unnecessary_new
    //     new TabController(initialIndex: 0, length: 4, vsync: this);

    return DefaultTabController(
      length: 4,
      child: 

TabBar(
      labelColor: Color.fromARGB(255, 239, 113, 90),
      unselectedLabelColor: Color.fromARGB(255, 111, 115, 118),
      indicatorColor: Color.fromARGB(255, 239, 113, 90),
      isScrollable: true,
      //  controller: controller,
      indicatorWeight: 4,
      labelStyle: TextStyle(fontSize: 16),
      tabs: const <Widget>[
        Tab(
          child: Text(
            'ENTREES',
            style: TextStyle(
                fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'PLATS',
            style: TextStyle(
                fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'DESSERTS',
            style: TextStyle(
                fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'BOISSONS',
            style: TextStyle(
                fontFamily: "BarlowBold", fontWeight: FontWeight.bold),
          ),
        ),
      ],
    )
    );
  }
}



