import 'package:flutter/material.dart';

import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/tabBar.dart';
import 'package:rez/restaurant/dishs/dishsWidgets/oneWidgetPlat.dart';

import '../../models/declarationValues.dart';
import '../../data/data.dart' as data;


class CallWidgetPlat extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetPlat> createState() => _CallWidgetPlatState();
}

class _CallWidgetPlatState extends State<CallWidgetPlat>
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
                    return OneWidgetPlat(
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
