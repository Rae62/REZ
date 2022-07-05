import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:rez/account/Historique/orderHistory.dart';
import 'package:rez/account/Historique/restoCard.dart';
import 'package:rez/account/Paiement/payment.dart';
import 'package:rez/account/ProfileScreen.dart';
import 'package:rez/account/Update/BodyUpdate.dart';
import 'package:rez/account/bodyProfile.dart';
import 'package:rez/account/favorites/Favorites.dart';
import 'package:rez/additionalData/faq/faqList.dart';
import 'package:rez/additionalData/faq/infoPage.dart';
import 'package:rez/additionalData/mentions_légales/infopage.dart';
import 'package:rez/authentification/Login.dart';
import 'package:rez/authentification/forgotPassword.dart';
import 'package:rez/authentification/register.dart';
import 'package:rez/authentification/sendEmail.dart';
import 'package:rez/confirmations/confirmPaiement.dart';
import 'package:rez/confirmations/confirmSendEmail.dart';
import 'package:rez/home/welcomePage.dart';
import 'package:rez/home/widgetList.dart';
import 'package:rez/restaurant/dishs/choiceBeverage.dart';
import 'package:rez/restaurant/dishs/choiceDessert.dart';
import 'package:rez/restaurant/dishs/choiceEntree.dart';
import 'package:rez/restaurant/dishs/choicePlaces.dart';
import 'package:rez/restaurant/dishs/choicePlat.dart';
import 'package:rez/restaurant/list/listEvent.dart';
import 'package:rez/restaurant/list/listMenu.dart';
import 'package:rez/restaurant/list/listResto.dart';
import 'package:rez/restaurant/widgetList.dart';
import 'package:rez/additionalData/booking/bookingSummary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderHistory(),
    );
  }
}
