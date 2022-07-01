import 'package:flutter/material.dart';

class RestoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.all(5),
    //   child: Image.asset(todo.image),

    // );

    return Card(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 270,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1555396273-367ea4eb4db5'))),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('MELODIE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17 ),),
                          IconButton(icon: Icon(Icons.favorite_rounded), color: Colors.grey,
                          onPressed: () {},),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cuisine Française'),
                          Text('4.7/5 (214 votes)')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
