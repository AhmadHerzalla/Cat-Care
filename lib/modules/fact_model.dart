// import '../Network/network.dart';

// class FactModel{
//   late String factText;
//   late String imageLink;

//   Future<void> getFactText()async{
//     Map<String,dynamic> textInf = await Network(url: 'https://meowfacts.herokuapp.com/').getFactes();
//     factText=textInf['data'][0];

//   }
//   Future<void> getImageLink()async{
//     List<dynamic> textInf = await Network(url: 'https://api.thecatapi.com/v1/images/search').getData();
//     factText=textInf[0]['url'];
//   }

// }