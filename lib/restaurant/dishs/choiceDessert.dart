import 'package:flutter/material.dart';

import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/tabBar.dart';
import 'package:rez/restaurant/dishs/dishsWidgets/oneWidgetDessert.dart';

import '../../models/declarationValues.dart';
import 'package:rez/data/data.dart' as data;


class CallWidgetDessert extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetDessert> createState() => _CallWidgetDessertState();
}

class _CallWidgetDessertState extends State<CallWidgetDessert>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller =
        new TabController(initialIndex: 0, length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            TabBarResto(),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OneWidgetDessert(
                      todo: widget.tovisit[index],
                    );
                  },
                  itemCount: widget.tovisit.length),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
