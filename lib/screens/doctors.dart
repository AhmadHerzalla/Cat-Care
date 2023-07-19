import 'package:flutter/material.dart';

import '../modules/doc_carde.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
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
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),

DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),




DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),



DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),


DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),


DocCarde(
              addres: 'Omar Mukhtar Street',
               decoration: " master's  veterinary medicine ",
                emile: 'ahmadakramherzalla@gmail.com', 
                name: 'Ameer Ali',
                 phone: 056944788,
                  profil: 'https://instagram.com/_ahmad_herzalla?igshid=ZDc4ODBmNjlmNQ==',
                   image: "images/doctors.png",
                  ),

             
              

          ],
        ),
      )
      );
      
      
      
  }
}