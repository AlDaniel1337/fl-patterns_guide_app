import 'package:flutter/material.dart';

class ScrollableSpace extends StatelessWidget {

  final List<Widget> data;
  final double height;
   
  const ScrollableSpace({
    super.key, 
    required this.data,
    this.height = 450
  });
  
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height),
      child: SingleChildScrollView(
        child: Column(
          children: data,
        ),
      ),
    );
  }
}