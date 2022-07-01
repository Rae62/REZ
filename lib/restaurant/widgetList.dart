import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
//attributs
  final String name;
  final String image;

//constructor
  WidgetList({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
