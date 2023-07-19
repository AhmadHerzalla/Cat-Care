

import 'package:cat_care/modules/selec_button.dart';
//import 'package:cat_care/screens/breed_screen.dart';
import 'package:cat_care/screens/doctors.dart';
import 'package:cat_care/screens/facts.dart';
import 'package:cat_care/screens/food_screen.dart';
import 'package:cat_care/screens/learn_screen.dart';
import 'package:cat_care/screens/stores.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.orange[100],
      
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/cat.gif"),
              radius: 80,
            )
          //  Image.asset("images/cat.gif",width: 200,)
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectionButton(text: "food", screen: FoodeScreen()),
                 SelectionButton(text: "learn", screen: LearnScreen()),

              ],
            ),
             
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectionButton(text: "Doctors", screen:DoctorsScreen() ),
                 SelectionButton(text: "stores", screen:StoresScreen() )

              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                 SelectionButton(text: "facts", screen:FactsScreen() )

              ],
            ),
          ],
        )),
    );
  }
}