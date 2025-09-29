import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleHeha = [

  ParticleData(
    usage: "Hacia él, la (Lugares / Destino)",
    examples: [
      ParticleExample(
        example: "学校【へは】行きません", 
        translation: "No voy A LA escuela.",
        note: "(Enfatiza el destino)\n"
          "【へ】 indica dirección o destino\n"
          " Al combinarse con 【は】 se enfatiza el lugar al que se dirige la acción.",
      ),
      ParticleExample(
        example: "駅【へは】行きます", 
        translation: "Voy A LA estación.",
      ),
    ],
  ),

];