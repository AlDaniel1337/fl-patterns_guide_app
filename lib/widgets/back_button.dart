import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
   
  const BackButtonWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 10,
      child: IconButton(
        icon: Icon(Icons.arrow_back, size: 32),
        onPressed: () => Navigator.of(context).pop(), 
      ),
    );
  }
}