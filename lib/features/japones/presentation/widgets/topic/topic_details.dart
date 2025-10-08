import 'package:flutter/material.dart';

class TopicDetails extends StatelessWidget {

  final String details;
   
  const TopicDetails({
    super.key,
    required this.details
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(details, 
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}