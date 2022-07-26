import 'package:flutter/material.dart';

import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/tabBar.dart';
import 'package:rez/restaurant/dishs/dishsWidgets/oneWidgetEntree.dart';

import '../../models/declarationValues.dart';
import '../../data/data.dart' as data;


class CallWidgetEntree extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetEntree> createState() => _CallWidgetEntreeState();
}

class _CallWidgetEntreeState extends State<CallWidgetEntree>
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
                    return OneWidgetEntree(
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
