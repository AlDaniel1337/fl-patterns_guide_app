import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleDeha = [

  ParticleData(
    usage: "En él, la, (Acciones / Lugares)",
    examples: [
      ParticleExample(
        example: "駅【では】勉強します", 
        translation: "EN LA estación estudio.",
        note: "(Enfatiza el lugar)\n"
          "【で】 indica el lugar donde ocurre la acción\n"
          " Al combinarse con 【は】 se enfatiza el lugar de la acción.",
      ),
      ParticleExample(
        example: "公園【では】遊びます", 
        translation: "EN EL parque juego.",
      ),
    ],
  ),

];