import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final TextEditingController _Textcontroller = TextEditingController();

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 213, 218, 222),
        width: 2,
      ),
    );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.blueAccent,
          width: 2,
        ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff5f4f6),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 120, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.black,
                    iconSize: 30.0,
                  ),
                  Container(
                    child: Text(
                      "Commentaires",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
              child: SizedBox(
                width: width / 1.2,
                child: TextField(
                  minLines: 1,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 213, 218, 222),
                    filled: true,
                    labelText: "Inserez votre commentaire ici",
                    contentPadding: const EdgeInsets.symmetric(vertical: 50),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(230, 0, 0, 18),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                  'Envoyer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    primary: Color.fromARGB(255, 239, 113, 90),
                    minimumSize: Size(30, 30)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Herman'),
                          Wrap(
                            textDirection: TextDirection.rtl,
                            spacing: 20,
                            children: [
                              Text('29/06/2022'),
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
                          ),
                          SizedBox(
                            width: width / 1.2,
                            child: TextField(
                              controller: _Textcontroller,
                              minLines: 2,
                              maxLines: 5,
                              keyboardType: TextInputType.multiline,
                              enabled: false,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                fillColor: Color.fromARGB(255, 213, 218, 222),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                border: myinputborder(),
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Herman'),
                          Wrap(
                            textDirection: TextDirection.rtl,
                            spacing: 20,
                            children: [
                              Text('29/06/2022'),
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
                          ),
                          SizedBox(
                            width: width / 1.2,
                            child: TextField(
                              controller: _Textcontroller,
                              minLines: 2,
                              maxLines: 5,
                              keyboardType: TextInputType.multiline,
                              enabled: false,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                fillColor: Color.fromARGB(255, 213, 218, 222),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                border: myinputborder(),
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
