import 'package:flutter/material.dart';

class WidgetOffer extends StatelessWidget {
//attributs
  final String title;
  final String subtitle;
  final String image;

//constructor
  WidgetOffer({required this.title, required this.subtitle, required this.image});

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
          height: 100,
          child: Stack(fit: StackFit.expand, children: <Widget>[
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                 Text(subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
