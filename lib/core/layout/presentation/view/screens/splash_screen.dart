import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.deepPurple,
      child: Center(
        child: CircularProgressIndicator(color: Colors.white,),
      ),
    );
  }
}