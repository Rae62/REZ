import 'package:flutter/material.dart';
import '../../models/declarationValuesdataBooking.dart';
import '../../data/dataBooking.dart' as data;
import './oneObjectList.dart';
// import '../../composants/bottomBar.dart';

class BookingSummary extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<BookingSummary> createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      // appBar
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      shadowColor: Colors.grey,
      title: const Text(
        "Récapitulatif de la réservation",
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true),
      body: SingleChildScrollView(
        
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(30),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OneObjectList(
                      todo: widget.tovisit[index],
                    );
                  },
                  itemCount: widget.tovisit.length),
            ),
            Container( 
              height: 250,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Column( 
                children: <Widget>[ 
                  Container(
                    
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/women.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nombre de convives',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 146, 149, 151),
                                ),
                              ),
                              Text(
                                'Jane Doe',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '+ 2 personnes',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text(
                        'Valider la réservation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          primary: Color.fromARGB(255, 239, 113, 90),
                          minimumSize: Size(400, 50)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}
