import 'dart:async';

import 'package:cat_care/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    navigateToMainScreen();
  }
  

  void navigateToMainScreen() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay for 2 seconds
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return const HomeScreen();
    }) ); // Navigate to the main screen and replace the splash screen
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/cat walk.gif"),fit: BoxFit.fill)
        ),
        
      )
    
    );
  }
}