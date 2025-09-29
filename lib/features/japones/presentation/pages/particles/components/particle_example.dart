import 'package:flutter/material.dart';

class ParticleFullExample extends StatelessWidget {

  final String example;
  final String translation;
  final String? note;
  final Color? noteColor;
   
  const ParticleFullExample({
    super.key, 
    required this.example, 
    required this.translation,
    this.note,
    this.noteColor,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [

          Text(example, 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold) 
          ),
          
          Text(translation, 
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.grey) 
          ),

          if (note != null) 
          Text(note!, 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: noteColor) 
          ),
        ],
      ),
    );
  }
}