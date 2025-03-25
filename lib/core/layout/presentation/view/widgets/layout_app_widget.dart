  import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/layout_variables.dart';

AppBar layoutAppBar(int currentScreen) {
    return AppBar(
      centerTitle: true,
      title: Text(LayoutScreenConstants.screensheaders[currentScreen]),
    );
  }