
import 'package:flutter/material.dart';

import '../Network/network.dart';
//import 'package:http/http.dart' as http;

class BreedScreen extends StatefulWidget {
  const BreedScreen({super.key});

  @override
  State<BreedScreen> createState() => _BreedScreenState();
  
}


List<String> breedText=[
"American Shorthair","Persian","Burmese",
"Sphynx","Siamese","Maine Coon ","British Shorthair",
"Ragdoll","Exotic Shorthair"," Bengal cat","Scottish Fold",
];




// Future<void> getBreedImage(String breedType)async{
// List<dynamic> breedImage = await Network(url:"https://api.thecatapi.com/v1/images/search?breed_ids=$breedType,abys").getData();
// imageurl =  breedImage[0]["url"];
// }

// void fff(String breedType)async{
//   imageurl = await getBreedImage(breedType);
// }

class _BreedScreenState extends State<BreedScreen> {
  String? imageway;

   getinfo(String breed) {
  Network().getData("?breed_ids=$breed,abys").then((value) => {
    setState(() {
      imageway= value[0]['url'];
    },)
    
  });
   
  }


  @override
 void initState() {
 
   Network().getData("?breed_ids=${breedText[0]},abys");
   
   getinfo(breedText[0]);
      
    super.initState();
  }
  
Column fff (String name){
  getinfo(name);
  return Column(
          children: [
            imageway!=null? Image.network(imageway??" "):CircularProgressIndicator(),
            Text(name), 
          ],

        );


}
  @override
  Widget build(BuildContext context) 
{
    
    return Scaffold(
      appBar: AppBar(title: Text("cat image")),
      body: SingleChildScrollView(
        child:
         Column(
          children: [
            Image.network(imageway??" "),
            Text(breedText[0]),

            Image.network(imageway!),
            Text(breedText[1]),
            
          ],

        ),
        

      ),
  //     body: ListView.builder(
  //       itemCount: breedText.length,
  //        itemBuilder: (context, index) {
  //         getinfo(breedText[index]);
     

  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //   children: [
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.center,
            
  //           children: [
  //             SizedBox(height: 16,),
  //            Image.network(imageway??"",width: 350,),
  //             SizedBox(height: 16,),
  //             Text(breedText[index],style: TextStyle(fontSize: 24),),
              
  //           ],
  //         ),
  //       ],
  //     )

  //   ],
  //   );
  // },
  //       ),
  
   ) ;
  }
  }
 