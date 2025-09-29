import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleGa = [
  ParticleData(
    usage: "Quien hace la acción en la oración (sujeto).",
    examples: [
      ParticleExample(
        example: "牛【が】", 
        translation: "La vaca hace...",
        note: "Aquí, 'が' indica que la vaca es el sujeto que realiza la acción.",
      ),
      ParticleExample(
        example: "神様【が】動物たち【に】行った........", 
        translation: "Dios le dijo a los animales...",
      ),
    ],
  ),

  ParticleData(
    usage: "Tema del que se está hablando o que se enfatiza en la oración.",
    examples: [
      ParticleExample(
        example: "猫【が】魚【を】食べます", 
        translation: "El gato come pescado.",
        note: "Aquí se usa が para presentar al gato como el tema de la oración.",
      ),
    ],
  ),

  ParticleData(
    usage: "Marcar el sujeto de la oración",
    examples: [
      ParticleExample(
        example: "誰【が】来ますか", 
        translation: "¿Quién viene?",
        note: "Aquí se usa が para preguntar por el sujeto que realiza la acción.",
      ),
      ParticleExample(
        example: "田中さん【が】来ます", 
        translation: "Tanaka viene.",
        note: "Aquí se usa が para resaltar a Tanaka en la respuesta a la pregunta.",
      ),
    ],
  ),

  ParticleData(
    usage: "Con verbos de capacidad, gusto o necesidad",
    examples: [
      ParticleExample(
        example: "日本語【が】分かります", 
        translation: "Entiendo japonés.",
      ),
      ParticleExample(
        example: "コーヒー【が】好きです", 
        translation: "Me gusta el café.",
      ),
    ],
  ),

  ParticleData(
    usage: "Más orientado a una opinión o algo momentáneo",
    examples: [
      ParticleExample(
        example: "この本【が】好きです。", 
        translation: "Me gusta este libro (en este momento).",
        note: "Aquí se usa が porque es una opinión personal y momentánea sobre un libro específico.",
      ),
    ],
  ),

  ParticleData(
    usage: "*Terminar*, *llevar*, *comenzar*, *caer*, llevan が siempre y cuando se indique el que (que llueve, que termina, que comienza)",
    isImportant: true,
    examples: [
      ParticleExample(
        example: "雨【が】降ります", 
        translation: "Está lloviendo.",
      ),
      ParticleExample(
        example: "試合【が】終わります", 
        translation: "El partido ha terminado.",
      ),
      ParticleExample(
        example: "映画【が】始まります", 
        translation: "La película está comenzando.",
      ),
    ],
  ),

  ParticleData(
    usage: "Para introducir información nueva o desconocida",
    examples: [
      ParticleExample(
        example: "猫【が】います。", 
        translation: "Hay un gato.",
        note: "Aquí el gato es algo que aparece por primera vez en la conversación → es información nueva, no tema",
      ),
    ],
  ),

  ParticleData(
    usage: "Para describir estados, fenómenos o percepciones",
    examples: [
      ParticleExample(
        example: "雨【が】降っています", 
        translation: "Está lloviendo.",
      ),
      ParticleExample(
        example: "音楽【が】聞こえます", 
        translation: "Se puede escuchar música.",
      ),
      ParticleExample(
        example: "風【が】吹いています", 
        translation: "El viento está soplando.",
      ),
    ],
  ),

  ParticleData(
    usage: "Para expresar deseos o necesidades",
    examples: [
      ParticleExample(
        example: "水【が】欲しいです", 
        translation: "Quiero agua.",
      ),
      ParticleExample(
        example: "休み【が】必要です", 
        translation: "Necesito un descanso.",
      ),
    ],
  ),

  ParticleData(
    usage: "Para contrastar implícitamente en respuestas",
    examples: [
      ParticleExample(
        example: "誰【が】やりましたか", 
        translation: "¿Quién lo hizo?",
      ),
      ParticleExample(
        example: "私【が】やりました", 
        translation: "Yo lo hice.",
      ),
    ],
  ),

  ParticleData(
    usage: "En el uso de la forma potencial", 
    isImportant: true,
    examples: [
      ParticleExample(
        example: "日本語【が】話せます", 
        translation: "Puedo hablar japonés.",
      ),
      ParticleExample(
        example: "この仕事【が】できます", 
        translation: "Puedo hacer este trabajo.",
      ),
    ]
  ),

  ParticleData(
    usage: "En el uso de los verbos intransitivos", 
    examples: [
      ParticleExample(
        example: "ドア【が】開きます", 
        translation: "La puerta se abre.",
      ),
      ParticleExample(
        example: "電気【が】消えます", 
        translation: "La luz se apaga.",
      ),
      ParticleExample(
        example: "道【が】込んでいました", 
        translation: "La carretera estaba congestionada.",
      ),
    ]
  )
];