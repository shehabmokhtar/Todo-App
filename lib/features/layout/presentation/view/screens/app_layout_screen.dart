import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/layout.dart';
import 'package:todo_app/core/services/tasks_database.dart';
import 'package:todo_app/features/layout/presentation/view/screens/splash_screen.dart';
import 'package:todo_app/features/layout/presentation/view/widgets/layout_app_widget.dart';
import 'package:todo_app/features/layout/presentation/view/widgets/layout_bottom_navbar.dart';

class AppLayoutScreen extends StatefulWidget {
  const AppLayoutScreen({super.key});

  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  int currentScreen = 0;
  bool isLoading = true;
  @override
  void initState() {
    //Invoke database init
    TasksDatabase.init();
    super.initState();
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context)=> isLoading? SplashScreen():
     Scaffold(
      appBar: layoutAppBar(currentScreen),
      body: LayoutScreenConstants.screens[currentScreen],
      bottomNavigationBar: layoutBottomNavbar(currentScreen,(index) => setState(() => currentScreen = index)), 
    );

}