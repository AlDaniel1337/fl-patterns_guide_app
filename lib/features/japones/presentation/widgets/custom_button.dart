import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   
  final double width;
  final double height;
  final double radius;
  final Widget child;
  final Color? color;
  final LinearGradient? gradient;
  final Function()? onTap;
  final bool useShadow;
  final List<BoxShadow> shadows;
    
  const CustomButton({
    required this.child, 
    this.radius = 6, 
    this.height = 40, 
    this.width = 150, 
    this.color, 
    this.gradient,
    this.onTap,
    this.useShadow = false,
    this.shadows = const [ 
      BoxShadow(
        color: Color.fromARGB(255, 187, 187, 187),
        spreadRadius: 1,
        blurRadius: 10,
      )
    ],
    super.key, 
  });
  
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Container(

      // Decoración del botón
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: useShadow ? shadows : null,
        color: (onTap != null) 
          ? (color ?? colors.primary)
          : Colors.grey,
        gradient: gradient,
      ),

      // Efecto de material
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: (onTap != null) ? Colors.transparent : Colors.grey,

        // Efecto de pulsación
        child:  InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
      
          child: Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),

            child: child
      
          ),
        )
      ),
    
    );
  }
}