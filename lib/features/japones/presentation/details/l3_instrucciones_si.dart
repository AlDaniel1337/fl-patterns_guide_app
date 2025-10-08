import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/t3_instrucciones_si.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class ToInstruccion extends StatelessWidget {
   
  const ToInstruccion({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Topic(topic: instruccionesSi)
      ],
    );
  }
}