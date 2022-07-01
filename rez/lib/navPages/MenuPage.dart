import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:rez/account/ProfileScreen.dart';
import 'package:rez/nav_pages/Calendar.dart';
import 'package:rez/nav_pages/Cart.dart';
import 'package:rez/nav_pages/SeachPage.dart';

// import 'package:rezapp/nav_pages/user_item_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List pages = [
    // HomePage(),
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
          selectedItemColor: Color.fromARGB(255, 239, 113, 90),
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Menu",
                icon: Icon(
                  Icons.home,
                  size: 28,
                )),
            BottomNavigationBarItem(
                label: "Search", icon: Icon(Icons.search, size: 28)),
            BottomNavigationBarItem(
                label: "Calendar", icon: Icon(Icons.calendar_month, size: 28)),
            BottomNavigationBarItem(
                label: "Basket",
                icon: Icon(
                  Icons.shopping_cart,
                  size: 28,
                )),
            BottomNavigationBarItem(
                label: "User", icon: Icon(Icons.person, size: 28))
          ],
        ));
  }
}
