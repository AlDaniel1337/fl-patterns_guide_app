import 'package:flutter/material.dart';

class ShowMoreBtn extends StatelessWidget {

  final VoidCallback? onPressed;
  final bool showDetails;
   
  const ShowMoreBtn({
    super.key, 
    this.onPressed,
    this.showDetails = true,
  });
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 10,
      child: IconButton(
        icon: Icon(
          showDetails ? Icons.expand_less : Icons.expand_more, 
          size: 40
        ),
        onPressed: onPressed, 
      ),
    );
  }
}