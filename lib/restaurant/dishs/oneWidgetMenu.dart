import 'package:flutter/material.dart';
import 'package:rez/models/declarationValues.dart';

class OneWidgetMenu extends StatelessWidget {
  // attributs
  final ToDo todo;

  OneWidgetMenu({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  image: NetworkImage(todo.image),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  todo.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  todo.city,
                  style: TextStyle(fontSize: 12),
                ),
                Text('4.7/5 (214 votes)'),
              ],

              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 239, 113, 90),
                ),
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
