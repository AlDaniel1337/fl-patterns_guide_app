import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleNe = [
  
  ParticleData(
    usage: "Confirmación / acuerdo (“¿verdad?”, “¿no?”)",
    examples: [
      ParticleExample(
        example: "美味しいですね", 
        translation: "Está delicioso, ¿verdad?",
      ),
      
      ParticleExample(
        example: "面白い映画だったね", 
        translation: "Fue una película interesante, ¿verdad?",
      ),
    ],
  ),
    
  ParticleData(
    usage: "Compartir sentimientos / empatía",
    examples: [
      ParticleExample(
        example: "かわいいね", 
        translation: "Qué lindo, ¿no?",
      ),
    ],
  ),
    
  ParticleData(
    usage: "Suavizar una afirmación (hacerla menos brusca)",
    examples: [
      ParticleExample(
        example: "もう帰るね", 
        translation: "Ya me voy a casa, ¿vale?",
      ),
    ],
  ),
    
  ParticleData(
    usage: "Para atraer atención o mantener contacto conversacional",
    examples: [
      ParticleExample(
        example: "ねえ、聞いて", 
        translation: "Oye, escucha",
      ),
      ParticleExample(
        example: "聞いてるね", 
        translation: "¿Me estás escuchando?",
      ),
    ],
  ),

];
