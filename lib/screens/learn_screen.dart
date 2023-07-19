import 'package:cat_care/modules/learm_carde.dart';
import 'package:flutter/material.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text("Learn Cat Reaction",style: TextStyle(color: Colors.black),),
        centerTitle: true,),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              LearnCarde(
                image: 'images/Capture1.PNG',
                 text: "that mean i'm getting upset",),
                 

                 LearnCarde(
                image: 'images/Capture2.PNG',
                 text: "that mean i'm happy to see you",),

                 LearnCarde(
                image: 'images/Capture3.PNG',
                 text: "that mean i'm scared",),

                 LearnCarde(
                image: 'images/Capture4.PNG',
                 text: "that mean i'm crazy about you",),

                 LearnCarde(
                image: 'images/Capture5.PNG',
                 text: "that mean i'm interested",),
                 LearnCarde(
                image: 'images/Capture6.PNG',
                 text: "that mean Let's be friends",),

            ],
          ),
        ),

    );
  }
}