import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/layout.dart';
import 'package:todo_app/features/layout/presentation/view/widgets/layout_app_widget.dart';
import 'package:todo_app/features/layout/presentation/view/widgets/layout_bottom_navbar.dart';

class AppLayoutScreen extends StatefulWidget {
  const AppLayoutScreen({super.key});

  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  int currentScreen = 0;
  @override
  Widget build(BuildContext context)=>
     Scaffold(
      appBar: layoutAppBar(currentScreen),
      body: LayoutScreenConstants.screens[currentScreen],
      bottomNavigationBar: layoutBottomNavbar(currentScreen,(index) => setState(() => currentScreen = index)), 
    );

}