import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  

  CalculateButton({
    required this.Btntext,
    required this.size,
  });

  final String Btntext;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: size.height*0.08,
      width: size.width*0.46,
      decoration: BoxDecoration(
        color: Colors.teal[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          Btntext,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            
          ),),
      ),
    );
  }
}
