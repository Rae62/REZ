import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:rez/account/profileScreen.dart';
import 'package:rez/home/homePage.dart';
import 'package:rez/navPages/calendar.dart';
import 'package:rez/navPages/cart.dart';
import 'package:rez/navPages/seachPage.dart';
import 'package:rez/restaurant/dishs/choicePlaces.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List pages = [
    HomePage(),
    SearchPage(),
    CalendarPage(),
    CartPage(),
    ProfileScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[50],
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.orange[200],
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Calendar", icon: Icon(Icons.calendar_month)),
            BottomNavigationBarItem(
                label: "Cart", icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(label: "User", icon: Icon(Icons.person))
          ],
        ));
  }
}
