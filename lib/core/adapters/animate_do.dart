import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimateDoAdapter {

  static Widget fadeIn({
    required Widget child,
    Duration duration = const Duration(milliseconds: 800),
    Duration delay = const Duration(milliseconds: 100),
    bool animate = true,
    bool manualTrigger = false,
    bool from = false,
    double fromOpacity = 0.0,
    double fromY = 20.0,
    double fromX = 0.0,
    double fromScale = 1.0,
   }) {
     return FadeIn(
       duration: duration,
       delay: delay,
       animate: animate,
       manualTrigger: manualTrigger,
       child: child,
     );
   }
  
}