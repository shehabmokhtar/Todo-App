import 'package:flutter/material.dart';

class LayoutScreenConstants{
  static const List<String> screensheaders = [
    'Tasks',
    'Done',
    'Archived',
    'Settings',
  ];

  static const List<Widget> screens = [
    Center(
      child: Text('Tasks'),
    ),
    Center(
      child: Text('Done'),
    ),
    Center(
      child: Text('Archived'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
}