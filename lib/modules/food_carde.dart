import 'package:flutter/material.dart';

class FoodCarde extends StatelessWidget {
 final Color color;
 final String day;
 final String food2;
 final String food3;
 final String food4;
 final Function function;
  const FoodCarde({super.key, required this.color, required this.day, required this.food2, required this.food3, required this.food4, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => function(),
      child: Container(
        width: 160,
        height: 100,
        padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
           borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(day),
            Text(food2),
            Text(food3),
            Text(food4),
          ],
        ),
      ),
    );
  }
}