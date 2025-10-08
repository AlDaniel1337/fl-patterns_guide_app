import 'package:flutter/material.dart';

class TopicTitle extends StatelessWidget {

  final String title;
   
  const TopicTitle({
    super.key,
    required this.title
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(title, 
      style: TextStyle(
        fontSize: 34, 
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple
      ),
    );
  }
}