import 'package:flutter/material.dart';

class TopicRules extends StatelessWidget {

  final String rules;
   
  const TopicRules({
    super.key,
    required this.rules
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(rules, 
      style: TextStyle(
        fontSize: 18,
        color: Colors.redAccent,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}