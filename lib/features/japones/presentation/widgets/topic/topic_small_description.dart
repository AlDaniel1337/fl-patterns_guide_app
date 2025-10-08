import 'package:flutter/material.dart';

class TopicSmallDescription extends StatelessWidget {

  final String smallDescription;
   
  const TopicSmallDescription({
    super.key,
    required this.smallDescription
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(smallDescription, 
      style: TextStyle(
        fontSize: 20, 
        fontWeight: FontWeight.bold,
      ),
    );
  }
}