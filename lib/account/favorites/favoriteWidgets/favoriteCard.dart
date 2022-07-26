import 'package:flutter/material.dart';
import 'package:rez/models/todoModel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class favoriteCard extends StatelessWidget {
  // attributs
  final ToDo todo;

  favoriteCard({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 75,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
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
                RatingBar.builder(
                  initialRating: 3,
                  itemSize: 20,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 239, 113, 90),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],

              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.favorite_rounded,
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
