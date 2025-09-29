import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleTameni = [

  ParticleData(
    usage: "Indica el propósito o la intención detrás de una acción, similar a 'para' en español.",
    examples: [
      ParticleExample(
        example: "勉強【のために】図書館【へ】行きます。", 
        translation: "Voy a la biblioteca PARA estudiar.",
      ),
    ],
  ),

  ParticleData(
    usage: "Se utiliza para expresar una razón o causa, similar a 'por' o 'debido a' en español.",
    examples: [
      ParticleExample(
        example: "病気【のために】学校【を】休みました。", 
        translation: "Me ausenté de la escuela DEBIDO A una enfermedad.",
      ),
    ],
  ),

];