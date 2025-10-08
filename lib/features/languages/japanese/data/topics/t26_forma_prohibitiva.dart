import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity formaProhibitiva = TopicEntity(
  icon: Icons.block,
  title: "Forma Prohibitiva",
  subtitle: "Prohibir algo.",
  smallDescription: "Prohibir acciones (o algo) de manera directa.",
  details: "La forma prohibitiva se utiliza para prohibir acciones o instrucciones directas.",
  rule: "Forma る + な",

  examples: [
    TopicExample(
      example: "食べるな。", 
      translation: "¡No comas!",
    ),
    
    TopicExample(
      example: "ここ【に】入るな。", 
      translation: "¡No entres aquí!",
    ),

    TopicExample(
      example: "そんなこと【を】言うな。", 
      translation: "¡No digas cosas así!",
    ),
  ],

);