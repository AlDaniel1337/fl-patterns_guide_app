import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleMade = [
  
  ParticleData(
    usage: "Hasta (lugar, tiempo)",
    examples: [
      ParticleExample(
        example: "駅【まで】", 
        translation: "Hasta la estación...",
      ),
      ParticleExample(
        example: "駅【まで】歩きます", 
        translation: "Camino hasta la estación...",
      ),
      ParticleExample(
        example: "5時【まで】", 
        translation: "Trabajo hasta las 5...",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Límite en extensión / grado",
    examples: [
      ParticleExample(
        example: "子供【から】大人【まで】", 
        translation: "Desde niños hasta adultos.",
      ),
      ParticleExample(
        example: "子供【まで】参加しました", 
        translation: "Incluso los niños participaron",
      ),
      ParticleExample(
        example: "彼【は】泣く【まで】謝った", 
        translation: "Él se disculpó hasta llorar",
      ),
    ],
  ),
  
];
