import 'package:flutter/material.dart';
import 'package:todo_app/features/tasks/presentation/view/tasks_screen.dart';

class LayoutScreenConstants{
  static const List<String> screensheaders = [
    'Tasks',
    'Done',
    'Archived',
    'Settings',
  ];

  static const List<Widget> screens = [
    TasksScreen(),
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