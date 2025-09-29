import 'package:flutter/material.dart';

class ParticleUsage extends StatelessWidget {

  final String usage;
   
  const ParticleUsage({
    super.key, 
    required this.usage
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(usage, 
          textAlign: TextAlign.center,
          style: TextStyle( fontSize: 22, color: Colors.blueAccent ) 
        ),
      ],
    );
  }
}