import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/declarationValues.dart';
import 'package:rez/data/data.dart' as data;
import 'OneWidgetMenu.dart';

class CallWidgetMenu extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetMenu> createState() => _CallWidgetMenuState();
}

class _CallWidgetMenuState extends State<CallWidgetMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            "Liste des menus",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return OneWidgetMenu(
              todo: widget.tovisit[index],
            );
          },
          itemCount: widget.tovisit.length),
    );
  }
}
