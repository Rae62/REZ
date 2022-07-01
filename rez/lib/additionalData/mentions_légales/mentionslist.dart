import 'package:flutter/material.dart';
import 'package:rez/addtionalData/mentions_l%C3%A9gales/infopage.dart';

class MentionsList extends StatefulWidget {
  @override
  _MentionsListState createState() => _MentionsListState();
}

class Info {
  final String titre;
  final String description;
  final String urlImage;
  final String texte;

  Info({
    required this.titre,
    required this.description,
    required this.urlImage,
    required this.texte,
  });
}

List<Info> infos = [
  Info(
      titre: 'Protection des droits',
      description:
          "Rez Inc. ('REZ') respecte les droits de propriété intellectuelle d'autrui et attend de ses utilisateurs...",
      urlImage:
          'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
      texte:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet felis quis massa rutrum lobortis. Aenean semper felis vel dignissim feugiat. Donec eget mattis ipsum, id interdum massa. Etiam non metus sit amet dolor interdum imperdiet. Pellentesque a felis nibh. Aliquam posuere libero turpis. Ut scelerisque molestie posuere. Duis eget enim orci. Aliquam erat volutpat. Phasellus rhoncus, sapien sit amet condimentum pharetra, sapien tellus sollicitudin ante, a suscipit mi purus tristique sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In egestas augue at fringilla lacinia. Nullam vehicula ex ac eros luctus, vitae semper tortor molestie."),
  Info(
      titre: 'Protection des droits 2',
      description:
          "Rez Inc. ('REZ') respecte les droits de propriété intellectuelle d'autrui et attend de ses utilisateurs...",
      urlImage:
          'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
      texte:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet felis quis massa rutrum lobortis. Aenean semper felis vel dignissim feugiat. Donec eget mattis ipsum, id interdum massa. Etiam non metus sit amet dolor interdum imperdiet. Pellentesque a felis nibh. Aliquam posuere libero turpis. Ut scelerisque molestie posuere. Duis eget enim orci. Aliquam erat volutpat. Phasellus rhoncus, sapien sit amet condimentum pharetra, sapien tellus sollicitudin ante, a suscipit mi purus tristique sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In egestas augue at fringilla lacinia. Nullam vehicula ex ac eros luctus, vitae semper tortor molestie."),
  Info(
      titre: 'Protection des droits 3',
      description:
          "Rez Inc. ('REZ') respecte les droits de propriété intellectuelle d'autrui et attend de ses utilisateurs...",
      urlImage:
          'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
      texte:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet felis quis massa rutrum lobortis. Aenean semper felis vel dignissim feugiat. Donec eget mattis ipsum, id interdum massa. Etiam non metus sit amet dolor interdum imperdiet. Pellentesque a felis nibh. Aliquam posuere libero turpis. Ut scelerisque molestie posuere. Duis eget enim orci. Aliquam erat volutpat. Phasellus rhoncus, sapien sit amet condimentum pharetra, sapien tellus sollicitudin ante, a suscipit mi purus tristique sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In egestas augue at fringilla lacinia. Nullam vehicula ex ac eros luctus, vitae semper tortor molestie."),
];

class _MentionsListState extends State<MentionsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: infos.length,
            itemBuilder: (context, index) {
              final info = infos[index];
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      title: Text(
                        info.titre,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      subtitle: Text(info.description),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.orange[900],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => InfoPage(info: info),
                        ));
                      }));
            }));
  }
}
