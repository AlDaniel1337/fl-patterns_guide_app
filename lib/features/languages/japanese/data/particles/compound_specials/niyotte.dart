import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleNiyotte = [

  ParticleData(
    usage: "Indica el agente o medio por el cual se realiza una acción, similar a 'por' o 'a través de' en español.",
    examples: [
      ParticleExample(
        example: "この本【によって】日本語【が】上達しました。", 
        translation: "He mejorado mi japonés gracias a este libro.",
        note: "【によって】 indica el medio a través del cual se realiza la acción.",
      ),
    ],
  ),

];