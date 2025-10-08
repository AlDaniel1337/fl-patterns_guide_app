import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity atode = TopicEntity(
  icon: Icons.access_time_filled,
  title: "あとで",
  subtitle: "Más tarde, En cuanto, Después de.",
  smallDescription: "Realizar acciones en un momento posterior.",
  details: "Se utiliza para indicar que una acción se realizará en un momento posterior al actual.",
  rule: "Forma て + あとで, Forma た + あとで",
  considerations: [
    "終わってから"
      "\n\t\t Tiempo inmediato o muy poco margen"
      "\n\t\t Depende del momento",
    "終わったあとで"
      "\n\t\t Tiempo un poco prolongado o variado"
      "\n\t\t Una acción debió de haber pasado antes para que la otra ocurra"
  ],

  examples: [
    TopicExample(
      example: "電車【に】降りたあとで財布【を】無くしたこと【に】気【を】つきました。", 
      translation: "Después de bajar del tren me di cuenta que había perdido mi billetera.",
    ),

    TopicExample(
      example: "食事したあとで，映画【を】見に行きましょう。", 
      translation: "Después de comer, vayamos a ver una película.",
    ),
  ],

);