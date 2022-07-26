import 'package:flutter/material.dart';
import 'package:rez/models/declarationValues.dart';
import 'package:rez/restaurant/list/restoDetail.dart';

class OneWidgetResto extends StatelessWidget {
  // attributs
  final ToDo todo;

  OneWidgetResto({required this.todo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RestoDetail(),
          ),
        );
      },
    );
  }
}
