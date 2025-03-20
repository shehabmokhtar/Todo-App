
  import 'package:flutter/material.dart';

BottomNavigationBar layoutBottomNavbar(int currentScreen,onTap) =>
     BottomNavigationBar(
      backgroundColor: Colors.red,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey[500],
      unselectedLabelStyle: TextStyle(color: Colors.grey[500]),
      showUnselectedLabels: true,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
      BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
      BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archived'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    ], currentIndex: currentScreen, onTap: onTap,);