import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DocCarde extends StatelessWidget {
  const DocCarde({
    super.key,
     required this.name,
      required this.addres,
       required this.decoration,
        required this.profil,
         required this.phone,
          required this.emile,
           required this.image});

 final String name;
 final String addres;
 final String decoration;
 final String profil;
 final int phone;
 final String emile;
 final String image;



  makecall( number){
    launchUrl(Uri.parse("tel:$number")); }

    sendmessege( number){
    launchUrl(Uri.parse("sms:$number")); }

    seendemaile(emile){
      launchUrl(Uri.parse("mailto:emile"));
     }
     opine(String profil){
      launchUrl(Uri.parse(profil));
     }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(16),
    //  padding: EdgeInsets.all(4),
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
          Image.asset(image,width: 150,height: 150,),
          SizedBox(width: 8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 24,),),
              SizedBox(height: 16,),
              Text(decoration,),
              SizedBox(height: 16,),
              Text(addres,style: TextStyle(fontWeight: FontWeight.bold),),
          
              Row(
                children: [
                  IconButton(
                    iconSize: 20, icon:Icon(Icons.phone_outlined
                  ,color :Colors.blueGrey
                  ), onPressed: () { makecall(phone) ;},),

                  IconButton(
                    iconSize: 20, icon:Icon(Icons.message_outlined
                  ,color :Colors.blueGrey
                  ), onPressed: () { sendmessege(phone);},),

                    IconButton(
                    iconSize: 20, icon:Icon(Icons.email_outlined
                  ,color :Colors.blueGrey
                  ), onPressed: () { seendemaile(emile);},),

 IconButton(
                    iconSize: 20, icon:Icon(Icons.person_2_outlined
                  ,color :Colors.blueGrey
                  ), onPressed: () {opine(profil);},),


                ],
              )



            ],
          ),
        ],
      ),
    );
  }
}