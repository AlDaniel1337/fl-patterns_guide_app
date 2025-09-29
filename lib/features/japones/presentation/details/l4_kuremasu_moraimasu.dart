import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/data/topics/t4_kuremasu_moraimasu.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

//TODO: Agregar explicacion de cuando usar くれます y もらいます
class KuremasuMoraimasu extends StatelessWidget {
   
  const KuremasuMoraimasu({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Topic(topic: kuremasuMoraimasu)
      ],
    );
  }
}