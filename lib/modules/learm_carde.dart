import 'package:flutter/material.dart';

class LearnCarde extends StatelessWidget {
  const LearnCarde({
    super.key,
     required this.text,
     required this.image});
  final String text;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.orange[300],
        boxShadow: [
          BoxShadow(
            offset: Offset(-5, 7),
            blurRadius: 8,
            spreadRadius:.9,
            color: Color(0x3F000000).withOpacity(.3
            )
            )
        ]
      ),
      child: Row(
        children: [
          Image.asset(image,width: 150,
          height: 150,),
          Text(text,textAlign:TextAlign.start
          ,
          style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.bold),
          softWrap: true,
          )
        ],
      ),
    );
  }
}