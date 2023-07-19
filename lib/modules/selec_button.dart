
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
   final String text;
   final Widget screen;
  
  const SelectionButton({super.key, required this.text, required this.screen});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:const MaterialStatePropertyAll(Colors.orange),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        fixedSize: const MaterialStatePropertyAll(Size(160, 150)),
        shape: const MaterialStatePropertyAll(CircleBorder())

        ),
 
      onPressed: () { 
        Navigator.push(context, MaterialPageRoute( builder: (context){
                    return screen; }));
       },
      child: Text(text,
      style: const TextStyle(
        fontSize: 24,
      ),),

    );
  }
}