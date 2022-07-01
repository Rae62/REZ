import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rez/outSourcing/bottomBar.dart';

class CommentConfirm extends StatefulWidget {
  @override
  State<CommentConfirm> createState() => _CommentConfirmState();
}

class _CommentConfirmState extends State<CommentConfirm> {
  TextEditingController username = TextEditingController();

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                        color: Colors.black,
                        iconSize: 30.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 253, 64, 89),
                      onPressed: () {},
                      child: Icon(
                        Icons.check,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    "Le commentaire a bien été soumis.",
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
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
