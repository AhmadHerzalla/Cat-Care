import 'package:cat_care/modules/food_carde.dart';
import 'package:flutter/material.dart';

class FoodeScreen extends StatefulWidget {
  const FoodeScreen({super.key});

  @override
  State<FoodeScreen> createState() => _FoodeScreenState();
}

class _FoodeScreenState extends State<FoodeScreen> {
  bool isdon=false;
  Color a1=Colors.white;
   Color a2=Colors.white;
    Color a3=Colors.white;
    Color a4=Colors.white;
   Color a6=Colors.white;
    Color a5=Colors.white;
      Color a7=Colors.white;
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Cats Food",style:TextStyle(color: Colors.black) ,),
       backgroundColor: Colors.orange[300],),
       backgroundColor: Colors.orange[100],
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Text("Weekly food schedule",style: TextStyle(
            fontSize: 32
          ),),
          Text("Note: You can rearrange meals by days",style: TextStyle(
            fontSize: 22
          ),),
          Row(
            children: [
              FoodCarde(
                color: a1,
                 day: "saterday",
                 food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a1=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),

                      FoodCarde(
                color: a2,
                 day: "saterday",
                  food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a2=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),
            ],
          ),
           Row(
            children: [
              FoodCarde(
                color: a3,
                 day: "saterday",
                  food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a3=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),

                      FoodCarde(
                color: a4,
                 day: "saterday",
                  food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a4=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),
            ],
          ),
           Row(
            children: [
              FoodCarde(
                color: a5,
                 day: "saterday",
                  food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a5=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),

                      FoodCarde(
                color: a6,
                 day: "saterday",
                  food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                     function: (){
                      setState(() {
                        a6=Colors.orange[300]!;
                        print("object");
                      });
                      
                     }
                     ),
            ],
          ), FoodCarde(
            color: a7,
             day: "saterday",
              food2: "1-asd asd asd",
               food3: "2-fgh fgh fgh",
                food4: "3-zxc zxc zxc",
                 function: (){
                  setState(() {
                    a7=Colors.orange[300]!;
                    print("object");
                  });
                 },
                 
                 ),
          

Text("Note: Cat should drink water regularly during the day",
style: TextStyle(
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
          ),
        ],
        

       ),
     
    );
  }
}