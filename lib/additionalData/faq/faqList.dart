import 'package:flutter/material.dart';
import 'package:rez/additionalData/faq/infoPage.dart';

class FaqList extends StatefulWidget {
  @override
  _FaqListState createState() => _FaqListState();
}

class Info {
  final String title;
  final String description;
  final String urlImage;
  final String text;
  final String text2;
  final String text3;

  Info({
    required this.title,
    required this.description,
    required this.urlImage,
    required this.text,
    required this.text2,
    required this.text3,
  });
}

List<Info> infos = [
  Info(
    title:
        'Politique de droits d’auteur & Notification de violation du droit d’auteur',
    description:
        "Rez Inc. ('REZ') respecte les droits de propriété intellectuelle d'autrui et attend de ses utilisateurs...",
    urlImage:
        'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
    text:
        "Rez Inc. (« REZ ») respecte les droits de propriété intellectuelle d’autrui et attend de ses utilisateurs qu’ils fassent de même.",
    text2:
        "Dans des circonstances appropriées et à sa discrétion, Rez peux prendre la décision de désactiver et/ou de résilier les comptes des utilisateurs et restaurateurs qui enfreignent à plusieurs reprises ou sont accusés à plusieurs reprises d’avoir enfreint les droits d’auteur ou d’autres droits de propriété intellectuelle d’autrui.",
    text3:
        "Conformément au Digital Millennium Copyright Act de 1998 et compte tenu de diverses lois internationales sur le droit d’auteur, Rez répondra rapidement aux notifications envoyées à l’agent désigné par Rez pour les droits d’auteur (identifié ci-dessous) concernant les violations présumées des droits d’auteur de tiers sur l’application. Propriétés numériques détenues et accessibles au public (le(s) « Site(s) »).",
  ),
  Info(
    title: 'Conditions d’utilisation',
    description:
        "Les présentes conditions générales (“Conditions”) s’appliquent aux applications mobiles et/ou aux sites internet d’Uber en France...",
    urlImage:
        'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
    text:
        "Les présentes conditions générales (“Conditions”) s’appliquent aux applications mobiles et/ou aux sites internet d’Uber en France.",
    text2:
        "Dans des circonstances appropriées et à sa discrétion, Rez peux prendre la décision de désactiver et/ou de résilier les comptes des utilisateurs et restaurateurs qui enfreignent à plusieurs reprises ou sont accusés à plusieurs reprises d’avoir enfreint les droits d’auteur ou d’autres droits de propriété intellectuelle d’autrui.",
    text3:
        "Conformément au Digital Millennium Copyright Act de 1998 et compte tenu de diverses lois internationales sur le droit d’auteur, Rez répondra rapidement aux notifications envoyées à l’agent désigné par Rez pour les droits d’auteur (identifié ci-dessous) concernant les violations présumées des droits d’auteur de tiers sur l’application. Propriétés numériques détenues et accessibles au public (le(s) « Site(s) »).",
  ),
  Info(
    title: 'Politique de confidentialité',
    description:
        "Lorsque vous utilisez Rez, vous nous confiez vos données personnelles. Nous nous engageons à conserver cette confiance. Cela commence par...",
    urlImage:
        'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
    text:
        "Lorsque vous utilisez Rez, vous nous confiez vos données personnelles. Nous nous engageons à conserver cette confiance. Cela commence par vous aider à comprendre nos pratiques de confidentialité.",
    text2:
        "Dans des circonstances appropriées et à sa discrétion, Rez peux prendre la décision de désactiver et/ou de résilier les comptes des utilisateurs et restaurateurs qui enfreignent à plusieurs reprises ou sont accusés à plusieurs reprises d’avoir enfreint les droits d’auteur ou d’autres droits de propriété intellectuelle d’autrui.",
    text3:
        "Conformément au Digital Millennium Copyright Act de 1998 et compte tenu de diverses lois internationales sur le droit d’auteur, Rez répondra rapidement aux notifications envoyées à l’agent désigné par Rez pour les droits d’auteur (identifié ci-dessous) concernant les violations présumées des droits d’auteur de tiers sur l’application. Propriétés numériques détenues et accessibles au public (le(s) « Site(s) »).",
  ),
  Info(
    title: 'Licences logicielles',
    description:
        "L’autorisation est accordée, gratuitement, à toute personne obtenant une copie de ce logiciel et des fichiers...",
    urlImage:
        'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
    text:
        "L’autorisation est accordée, gratuitement, à toute personne obtenant une copie de ce logiciel et des fichiers de documentation associés (le « Logiciel »), de traiter le Logiciel sans restriction, y compris, sans limitation, les droits d’utilisation, de copie, de modification, de fusion , publier, distribuer, concéder en sous-licence et/ou vendre des copies du Logiciel, et permettre aux personnes à qui le Logiciel est fourni de le faire, sous réserve des conditions suivantes :",
    text2:
        "Dans des circonstances appropriées et à sa discrétion, Rez peux prendre la décision de désactiver et/ou de résilier les comptes des utilisateurs et restaurateurs qui enfreignent à plusieurs reprises ou sont accusés à plusieurs reprises d’avoir enfreint les droits d’auteur ou d’autres droits de propriété intellectuelle d’autrui.",
    text3:
        "Conformément au Digital Millennium Copyright Act de 1998 et compte tenu de diverses lois internationales sur le droit d’auteur, Rez répondra rapidement aux notifications envoyées à l’agent désigné par Rez pour les droits d’auteur (identifié ci-dessous) concernant les violations présumées des droits d’auteur de tiers sur l’application. Propriétés numériques détenues et accessibles au public (le(s) « Site(s) »).",
  ),
  Info(
    title: 'Tarifs',
    description:
        "Les prix et offres affichés sur l’application REZ son ceux définis par les restaurateurs…",
    urlImage:
        'https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915626_1280.png',
    text:
        "Les prix et offres affichés sur l’application REZ son ceux définis par les restaurateurs…",
    text2:
        "Dans des circonstances appropriées et à sa discrétion, Rez peux prendre la décision de désactiver et/ou de résilier les comptes des utilisateurs et restaurateurs qui enfreignent à plusieurs reprises ou sont accusés à plusieurs reprises d’avoir enfreint les droits d’auteur ou d’autres droits de propriété intellectuelle d’autrui.",
    text3:
        "Conformément au Digital Millennium Copyright Act de 1998 et compte tenu de diverses lois internationales sur le droit d’auteur, Rez répondra rapidement aux notifications envoyées à l’agent désigné par Rez pour les droits d’auteur (identifié ci-dessous) concernant les violations présumées des droits d’auteur de tiers sur l’application. Propriétés numériques détenues et accessibles au public (le(s) « Site(s) »).",
  ),
];

class _FaqListState extends State<FaqList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 248),
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
            itemCount: infos.length,
            itemBuilder: (context, index) {
              final info = infos[index];
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                  title: Text(
                    info.title,
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => InfoPage(info: info),
                      ),
                    );
                  },
                ),
              );
            }));
  }
}
