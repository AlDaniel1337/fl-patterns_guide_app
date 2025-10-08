import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleNi = [
  
  ParticleData(
    usage: "Donde ocurre una acción.",
    examples: [
      ParticleExample(
        example: "壁【に】絵【が】かけてあります", 
        translation: "Hay un cuadro colgado en la pared.",
        note: "Aquí, 'に' indica el lugar donde se encuentra el cuadro.",
      ),
      
      ParticleExample(
        example: "写真【は】引き出し【に】しまってあります", 
        translation: "La foto está guardada en el cajón.",
        note: "Aquí, 'に' indica el lugar donde se encuentra la foto.",
      ),
    ],
  ),

  ParticleData(
    usage: "A quien",
    examples: [
      ParticleExample(
        example: "神様【が】動物たち【に】行った", 
        translation: "Dios le dijo a los animales...",
        note: "Los animales son los receptores de la acción.",
      ),
      
      ParticleExample(
        example: "母に...", 
        translation: "A mi madre...",
        note: "Mi madre es la receptora de la acción",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar el momento exacto en el tiempo",
    examples: [
      ParticleExample(
        example: "3時【に】会いましょう", 
        translation: "Nos encontramos a las 3",
        note: "Aquí se indica el momento exacto en el tiempo.",
      ),
      ParticleExample(
        example: "日曜日【に】映画を見ます", 
        translation: "El domingo veo una película.",
        note: "Aquí se indica el día específico.",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar destino o dirección del movimiento",
    examples: [
      ParticleExample(
        example: "学校【に】行きます", 
        translation: "Voy a la escuela.",
        note: "Aquí se indica el destino o dirección del movimiento.",
      ),
      ParticleExample(
        example: "部屋【に】入ります", 
        translation: "Entro a la habitación.",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar el agente en construcciones pasivas",
    examples: [
      ParticleExample(
        example: "私は先生【に】褒められました", 
        translation: "Fui elogiado por el profesor",
        note: "El profesor es el agente que realiza la acción de elogiar.",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar propósito, resultado o estado final",
    examples: [
      ParticleExample(
        example: "医者【に】なります", 
        translation: "Me convertiré en médico",
        note: "Aquí se indica el propósito o resultado final de la acción.",
      ),

      ParticleExample(
        example: "日本語【の】先生【に】会いました", 
        translation: "Me encontré con un profesor de japonés",
      ),
    ],
  ),

  ParticleData(
    usage: "Para acciones de 'DAR'",
    examples: [
      ParticleExample(
        example: "先生【は】学生【に】本【を】あげました", 
        translation: "El profesor le dio un libro al estudiante",
        note: "El estudiante es el receptor de la acción",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Cuando la acción se hizo en el pasado y su duración no fue prolongada",
    examples: [
      ParticleExample(
        example: "昨日，友達【に】会いました", 
        translation: "Ayer me encontré con un amigo",
        note: "La acción de encontrarse fue puntual y no prolongada",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Indicar que algo paso en una parte específica",
    examples: [
      ParticleExample(
        example: "足【に】けが【を】してしまいました", 
        translation: "Me lastime la pierna",
        note: "No estoy hablando de la pierna si no de algo que paso allí (en la pierna)",
      ),
    ],
  ),

  ParticleData(
    usage: "Significado similar al 'a'/'al' del español",
    examples: [
      ParticleExample(
        example: "新しい仕事【に】...", 
        translation: "Al nuevo trabajo...",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Él querer invitar a alguien",
    examples: [
      ParticleExample(
        example: "彼女【を】スキー旅行【に】誘いたい", 
        translation: "Quiero/quise invitarla a un viaje de sky",
        note: "El *dónde* lleva la partícula 【に】\nLa *persona* lleva la partícula 【を】",
      ),
      ParticleExample(
        example: "私【は】タワポンさん【を】結婚式【に】招待するつもりです", 
        translation: "Voy a invitar a Tawapon a la boda",
        note: "招待する　➔　Invitacion formal \n誘いたい　➔　Invitacion informal, general",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Indicar que hay algo allí",
    examples: [
      ParticleExample(
        example: "机【の】上【に】本【が】あります", 
        translation: "Hay un libro sobre la mesa",
        note: "La partícula 【に】 indica la ubicación.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Pasar o reprobar (un examen)",
    examples: [
      ParticleExample(
        example: "試験【に】受かります", 
        translation: "Aprobar un examen",
      ),
      ParticleExample(
        example: "試験【に】落ちます", 
        translation: "Reprobar un examen",
      ),
    ],
  ),

  ParticleData(
    isImportant: true,
    usage:  "Para verbos de movimiento que impliquen un cambio de estado \n"
            "Entrar de una escuela",
    examples: [
      ParticleExample(
        example: "大学【に】入ります", 
        translation: "Entrar a la universidad",
        note: "Esta acción implica un cambio de estado (de no estar en la universidad a estar en la universidad).",
      ),
    ],
  ),

];
