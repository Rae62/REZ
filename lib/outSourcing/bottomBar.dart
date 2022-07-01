import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return BottomNavigationBar(
    unselectedFontSize: 0,
    selectedFontSize: 0,
    backgroundColor: Colors.grey[50],
    // onTap: onTap,
    // currentIndex: currentIndex,
    unselectedItemColor: Color.fromARGB(255, 111, 115, 118),
    showSelectedLabels: false,
    showUnselectedLabels: false,
    elevation: 0,
    selectedItemColor: Color.fromARGB(255, 239, 113, 90),
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.home)),
      BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
      BottomNavigationBarItem(
          label: "Calendar", icon: Icon(Icons.calendar_month)),
      BottomNavigationBarItem(label: "Basket", icon: Icon(Icons.shopping_cart)),
      BottomNavigationBarItem(label: "User", icon: Icon(Icons.person)),
    ],
  );
}
}