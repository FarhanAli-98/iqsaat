import 'package:flutter/material.dart';

class HomeScreenRow extends StatelessWidget {
  final String text;
  HomeScreenRow({
    this.text
  });
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                Text('see all', style: TextStyle(color: Colors.white))
              ],
          
      
    );
  }
}