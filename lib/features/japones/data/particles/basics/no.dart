import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleNo = [
  
  ParticleData(
    usage: "Pertenencia, posesión",
    examples: [
      ParticleExample(
        example: "猫【の】耳", 
        translation: "Las orejas del gato",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Relación / clasificación",
    examples: [
      ParticleExample(
        example: "日本【の】文化", 
        translation: "La cultura japonesa",
      ),
      ParticleExample(
        example: "学生【の】生活", 
        translation: "La vida estudiantil",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Aposición / identidad",
    examples: [
      ParticleExample(
        example: "田中さん【は】会社【の】社長です", 
        translation: "Tanaka-san es el presidente de la compañía",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Nominalización (convertir en sustantivo)",
    examples: [
      ParticleExample(
        example: "走る【のが】好きです", 
        translation: "Me gusta correr",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Explicación / tono explicativo (のだ / んです)",
    examples: [
      ParticleExample(
        example: "どうして来なかったの", 
        translation: "¿Por qué no viniste?",
      ),
      ParticleExample(
        example: "雨だったのです", 
        translation: "Es que estaba lloviendo",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Relaciones entre personas",
    examples: [
      ParticleExample(
        example: "山田さん【の】友達", 
        translation: "El amigo de Yamada",
      ),
      ParticleExample(
        example: "私【の】兄", 
        translation: "Mi hermano mayor",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Como coloquial de か",
    examples: [
      ParticleExample(
        example: "行くの", 
        translation: "¿Vas?",
        note: "Aquí の reemplaza a か en preguntas informales",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Conectar dos palabras juntas",
    examples: [
      ParticleExample(
        example: "友達【の】家【に】行くの", 
        translation: "Voy a casa de un amigo",
        note: "Aquí の conecta 'casa' con 'ir'",
      ),
    ],
  ),
  
];
