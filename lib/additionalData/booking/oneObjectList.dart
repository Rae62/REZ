import 'package:flutter/material.dart';
import '../../models/declarationValuesdataBooking.dart';

class OneObjectList extends StatelessWidget {
  // attributs
  final ToDo todo;

  OneObjectList({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 239, 113, 90),),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
              ),
              child: Align (
                alignment: Alignment.center,
                child: Text(
                  todo.id,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 14,
                    color: Color.fromARGB(255, 239, 113, 90),
                  ),
                ),
              )
            ),
            Container(
              child:  Text(
                  todo.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
            ),
            Container(
              child:  Text(
                  "${todo.price} €",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
            ),
          ],
        ),
    );
  }
}
