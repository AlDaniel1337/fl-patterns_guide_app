import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleKaraha = [

  ParticleData(
    usage: "Desde él, la, (Origen / Lugares / Tiempo)",
    examples: [
      ParticleExample(
        example: "学校【からは】行きません", 
        translation: "No voy DESDE la escuela.",
        note: "(Enfatiza el origen)\n"
          "【から】 indica el punto de partida\n"
          " Al combinarse con 【は】 se enfatiza el lugar de origen de la acción.",
      ),
      ParticleExample(
        example: "駅【からは】行きます", 
        translation: "Voy DESDE la estación.",
      ),
    ],
  ),

];