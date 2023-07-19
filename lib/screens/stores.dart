import 'package:flutter/material.dart';

import '../modules/doc_carde.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Cat's Doctors",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orange[300],
        centerTitle: true,

        ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ahmad Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/store.png",
                  ),
                    

                     DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ahmad Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/store.png",
                  ),

                   DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ahmad Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/store.png",
                  ),

                   DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ahmad Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/store.png",
                  ),

                   DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ahmad Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/store.png",
                  ),

                  
             
              

          ],
        ),
      )
      );
  }
}