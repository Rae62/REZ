import 'package:flutter/material.dart';

import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';
import 'package:rez/outSourcing/tabBar.dart';

import '../../models/declarationValues.dart';
import 'package:rez/data/data.dart' as data;

import 'oneWidgetBeverage.dart';

class CallWidgetBoisson extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetBoisson> createState() => _CallWidgetBoissonState();
}

class _CallWidgetBoissonState extends State<CallWidgetBoisson>
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
                    return OneWidgetBoisson(
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
