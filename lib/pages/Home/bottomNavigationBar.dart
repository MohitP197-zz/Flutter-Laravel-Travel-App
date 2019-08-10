import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D091),
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.home),
          ),
          // BottomNavigationBarItem(
          //   title: Text(''),
          //   icon: Icon(Icons.search),
          // ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.flight),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.local_hotel),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.drive_eta),
          ),
        ]);
  }
}
