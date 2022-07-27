import 'package:flutter/material.dart';
import 'package:rez/additionalData/legalMentions/infoPage.dart';
import 'package:rez/models/declarationValuesFaqLegalMentions.dart';
import '../../data/dataFaqLegalMentions.dart' as data;

class MentionsList extends StatefulWidget {
  final List<InfoLegalMentions> allInfo = data.infosLegal;

  @override
  _MentionsListState createState() => _MentionsListState();
}

class _MentionsListState extends State<MentionsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 247, 246, 248),
        shadowColor: Colors.grey,
        title: Text(
          "Mentions légales",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true),
        body: ListView.builder(
            itemCount: widget.allInfo.length,
            itemBuilder: (context, index) {
              final oneInfo = widget.allInfo[index];
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      title: Text(
                        oneInfo.titre,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      subtitle: Text(oneInfo.description),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.orange[900],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => InfoPage(info: oneInfo),
                        )
                      );
                    }
                  )
                );
          }
        )
      );
  }
}
