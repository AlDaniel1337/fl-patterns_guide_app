import 'package:flutter/material.dart';

class PatternSmallDescription extends StatelessWidget {

  final String description;
   
  const PatternSmallDescription({
    super.key,
    required this.description,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(description, 
      style: TextStyle( 
        fontSize: 20, 
        fontWeight: FontWeight.bold 
      ),
    );
  }
}