import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {

  final String title;
  final VoidCallback? onPress;
  final Color? color;
  final double fontSize;

  const CustomTextBtn({
    super.key,
    required this.title,
    this.onPress,
    this.color,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress, 
      child: Text( title, 
        style: TextStyle(
          fontSize: fontSize, 
          fontWeight: FontWeight.w400,
          color: color
        ),
      )
    );
  }
}