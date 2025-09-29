import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleNiha = [
  
  ParticleData(
    usage: "En él, la, (Lugares)",
    examples: [
      ParticleExample(
        example: "学校【には】図書館【が】あります", 
        translation: "EN LA escuela hay una biblioteca.",
        note: "(Enfatiza el lugar)\n"
          "【に】 indica el lugar donde existe algo\n"
          " Al combinarse con 【は】 se enfatiza el lugar de existencia.",
      ),
      ParticleExample(
        example: "公園【には】子供【が】います", 
        translation: "EN EL parque hay niños.",
      ),
    ],
  ),
  
];