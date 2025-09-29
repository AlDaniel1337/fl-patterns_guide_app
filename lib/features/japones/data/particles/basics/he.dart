import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleHe = [
  
  ParticleData(
    usage: "Indicar movimiento",
    examples: [
      ParticleExample(
        example: "学校【へ】行きます", 
        translation: "Voy a la escuela",
      ),
      
      ParticleExample(
        example: "家【へ】帰ります", 
        translation: "Regreso a casa",
      ),
    ],
  ),
  
  ParticleData(
    usage: "En expresiones formales / cartas (destinatario)",
    examples: [
      ParticleExample(
        example: "田中さん【へ】", 
        translation: "A Tanaka-san",
      ),
      
      ParticleExample(
        example: "お母さん【へ】", 
        translation: "A / para mi madre",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Expresiones figuradas (hacia un objetivo o abstracción)",
    examples: [
      ParticleExample(
        example: "未来【へ】", 
        translation: "Hacia el futuro",
      ),
      
      ParticleExample(
        example: "成功【へ】努力します", 
        translation: "Me esfuerzo hacia el éxito",
      ),
    ],
  ),

];
