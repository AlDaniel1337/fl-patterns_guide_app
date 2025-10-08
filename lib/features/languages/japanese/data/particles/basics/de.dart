import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleDe = [
  
  ParticleData(
    usage: "Con que (medio, herramienta o material)",
    examples: [
      ParticleExample(
        example: "ペン【で】書きます", 
        translation: "Escribo CON un bolígrafo",
      ),
      ParticleExample(
        example: "箸【で】食べます", 
        translation: "Como CON palillos",
      ),
      ParticleExample(
        example: "電車【で】行きます", 
        translation: "Voy EN tren",
      ),
    ],
  ),

  ParticleData(
    usage: "Durante un intervalo de tiempo",
    examples: [
      ParticleExample(
        example: "来週で", 
        translation: "Durante toda la semana que viene",
      ),
      ParticleExample(
        example: "週で", 
        translation: "Durante toda la semana",
      ),
      ParticleExample(
        example: "年で", 
        translation: "Durante todo el año",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Destacar algo dentro de videojuegos, manga, películas, etc",
    examples: [
      ParticleExample(
        example: "飲み物で一番好きなのはコーヒーです", 
        translation: "Lo que más me gusta de las bebidas es el café.",
      ),
      ParticleExample(
        example: "このゲームで一番好きなキャラクターは誰ですか", 
        translation: "¿Quién es tu personaje favorito en este juego?",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar una cantidad de tiempo, dinero necesario para realizar algo",
    examples: [
      ParticleExample(
        example: "駅まで歩いてから5分【で】行けます", 
        translation: "Requiero de 5 minutos para ir caminando a la estación",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Para fenómenos naturales, tormentas, sunamis, terremotos, lluvia",
    examples: [
      ParticleExample(
        example: "雨【で】", 
        translation: "por la lluvia...",
      ),
      ParticleExample(
        example: "台風【で】", 
        translation: "Por el tifón...",
      ),
      ParticleExample(
        example: "地震【で】", 
        translation: "Por el terremoto...",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Lugar donde ocurre la acción",
    examples: [
      ParticleExample(
        example: "学校【で】勉強します", 
        translation: "Estudio en la escuela.",
      ),
      ParticleExample(
        example: "図書館【で】本【を】読みます", 
        translation: "Leo un libro en la biblioteca.",
      ),
    ],
  ),  

  ParticleData(
    usage: "Causa o motivo",
    examples: [
      ParticleExample(
        example: "病気【で】学校【を】休みました", 
        translation: "Falté a la escuela por enfermedad.",
      ),
      ParticleExample(
        example: "事故【で】電車【が】遅れました", 
        translation: "El tren se retrasó por un accidente.",
      ),
    ],
  ),

];
