import 'package:flutter/material.dart';


class Description extends StatelessWidget {

  final String description;

  const Description({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descripción',
            style: TextStyle(
              fontSize: 24.0, 
              fontWeight: FontWeight.bold, 
              color: Colors.green
            ),
          ),
          const SizedBox(height: 8.0),
          Text(description,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          
    
        ],
      ),
    );
  }
}