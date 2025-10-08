import 'package:flutter/material.dart';

class TopicSubtitle extends StatelessWidget {

  final String subtitle;
   
  const TopicSubtitle({
    super.key,
    required this.subtitle
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(subtitle, 
      style: TextStyle(
        fontSize: 24, 
        fontWeight: FontWeight.bold,
      ),
    );
  }
}