import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity kamoshirenai = TopicEntity(
  icon: Icons.wifi_protected_setup_rounded,
  title: "かもしれません",
  subtitle: "Tal vez, puede que...",
  smallDescription: "Expresa posibilidad o suposición.",
  details: "Se usa para expresar incertidumbre o posibilidad sobre una situación o evento futuro.",
  rule: "Forma diccionario + かもしれません",
  considerations: [
    "Con un よ al final enfatiza más mi percepción de posibilidad",
  ],

  examples: [
    TopicExample(
      example: "来年卒業するかもしれません", 
      translation: "Tal vez me gradúe el próximo año.",
    ),
    
    TopicExample(
      example: "来年卒業するかもしれないよ", 
      translation: "Es posible que me gradúe el próximo año (lo creo).",
    ),

  ],
);