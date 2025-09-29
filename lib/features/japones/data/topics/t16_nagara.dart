import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity nagara = TopicEntity(
  title: "ながら",
  subtitle: "Mientras",
  smallDescription:  "Mientras hacia…",
  details: "Se usa para indicar que dos acciones ocurren simultáneamente.",
  rule: "Verbo en forma ます (sin ます) + ながら + acción principal + ます",
  extraData: [
    "La segunda acción tiene más peso",
    "ながら y ています no se colocan juntas",
  ],

  examples: [
    TopicExample(
      example: "音楽を聞きながら働きます", 
      translation: "Trabajo mientras escucho música",
    ),
    
    TopicExample(
      example: "働きながら，勉強します", 
      translation: "Estudio mientras trabajo",
    ),
    
    TopicExample(
      example: "子供の時アニメを見ながら食べました", 
      translation: "Cuando era niño comía mientras veía anime",
    ),

    TopicExample(
      example: "日本語を勉強しながら何をしていますか", 
      translation: "¿Qué haces mientras estudias japonés?",
    ),
    
    TopicExample(
      example: "電話をかけながら，運転してはいけません", 
      translation: "No debes conducir mientras hablas por teléfono",
    ),
  ],
);