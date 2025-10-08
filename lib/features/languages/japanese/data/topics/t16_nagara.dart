import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity nagara = TopicEntity(
  icon: Icons.multiple_stop,
  title: "ながら",
  subtitle: "Mientras",
  smallDescription:  "Mientras hacia…",
  details: "Se usa para indicar que dos acciones ocurren simultáneamente.",
  rule: "Verbo en forma ます (sin ます) + ながら + acción principal + ます",
  considerations: [
    "La segunda acción tiene más peso",
    "ながら y ています no se colocan juntas",
  ],

  examples: [
    TopicExample(
      example: "音楽【を】聞きながら働きます", 
      translation: "Trabajo mientras escucho música",
    ),
    
    TopicExample(
      example: "働きながら，勉強します", 
      translation: "Estudio mientras trabajo",
    ),
    
    TopicExample(
      example: "子供【の】時アニメ【を】見ながら食べました", 
      translation: "Cuando era niño comía mientras veía anime",
    ),

    TopicExample(
      example: "日本語【を】勉強しながら何【を】していますか", 
      translation: "¿Qué haces mientras estudias japonés?",
    ),
    
    TopicExample(
      example: "電話【を】かけながら，運転してはいけません", 
      translation: "No debes conducir mientras hablas por teléfono",
    ),
  ],
);