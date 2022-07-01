import 'package:flutter/material.dart';

import '../../models/declarationValues.dart';
import 'package:rez/data/data.dart' as data;

import 'oneWidgetEvent.dart';

class CallWidgetEvent extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetEvent> createState() => _CallWidgetEventState();
}

class _CallWidgetEventState extends State<CallWidgetEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            "Liste des évènements",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return OneWidgetEvent(
              todo: widget.tovisit[index],
            );
          },
          itemCount: widget.tovisit.length),
    );
  }
}
