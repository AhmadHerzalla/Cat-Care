
import 'package:flutter/material.dart';


import '../Network/network.dart';

class FactsScreen extends StatefulWidget {
  const FactsScreen({super.key});

  @override
  State<FactsScreen> createState() => _FactsScreenState();
}
 




//  getBreedImage()async{
// List<dynamic> breedImage = await Network(url:"https://api.thecatapi.com/v1/images/search").getData();
// return  breedImage[0]["url"];


// }

// Future<String> getfact()async{
// Map<String,dynamic> breedImage = await Network(url:"https://meowfacts.herokuapp.com/").getFactes();
// return breedImage["url"][0];
// }


class _FactsScreenState extends State<FactsScreen> {
  String? imageurl;
 String? facttext;
  getinfo() {
  Network().getData("").then((value) => {
    setState(() {
      imageurl= value[0]['url'];
    },)
    
  });
   Network().getFactes().then((value) => 
   setState(() {
     facttext= value['data'][0];
   },));
  }

  void initState() {
 
   Network().getData("");
   Network().getFactes();
   getinfo();
      
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text(" Fact of Cat's",style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.orange[300],
      centerTitle: true,),
      backgroundColor: Colors.orange[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: imageurl != null?Image.network(imageurl!,fit:BoxFit.cover,):const CircularProgressIndicator(),
            ),
            
          //  SizedBox(height: 40,),
            Text(facttext??" ",style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),
            //SizedBox(height: 64,),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.orange[300]),
                padding: MaterialStatePropertyAll(EdgeInsets.all(24))

              ),
              onPressed: (){
                getinfo();

              },
               child: Text(" Other  Fact",style: TextStyle(
                color: Colors.black,
                fontSize: 24,

               ),))
            
          ],
        ),
      ),
      
    );
  }
}