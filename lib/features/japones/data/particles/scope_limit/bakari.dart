import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleBakari = [
  
  ParticleData(
    usage: "Indicar exclusividad o limitación (solo, nada más que)",
    examples: [
      ParticleExample(
        example: "勉強【ばかり】している。", 
        translation: "Solo estudio.",
      ),
      ParticleExample(
        example: "遊んで【ばかり】いる。", 
        translation: "Solo juego.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Indicar que una acción acaba de ocurrir (acabar de)",
    examples: [
      ParticleExample(
        example: "食べた【ばかり】です。", 
        translation: "Acabo de comer.",
      ),
    ],
  ),

  
];
