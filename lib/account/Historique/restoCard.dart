import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    // return Container(
    //   margin: EdgeInsets.all(5),
    //   child: Image.asset(todo.image),

    // );

    return Card(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: height / 6,
              width: width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1555396273-367ea4eb4db5'))),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'MELODIE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 190),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_rounded),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Text(
                        'Cuisine Française',
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
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
                          Text('  (214 votes)'),
                        ],
                      ),
                    ],
                  ),
                  // Container(
                  //   child: IconButton(
                  //     icon: Icon(Icons.favorite_rounded),
                  //     color: Colors.grey,
                  //     onPressed: () {},
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
