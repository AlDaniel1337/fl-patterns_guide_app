import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity teshimaimasu = TopicEntity(
  icon: Icons.done,
  title: "て+しまいます",
  subtitle: "Completar acción",
  smallDescription: "Enfatizar el inicio o término de una acción",
  details: "Se usa para enfatizar que una acción se ha completado o que algo ha sucedido completamente.",
  rule: "Forma て + しまいます",

  considerations: [
    "しまいます: Dejar las cosas como están",
    "てしまいます: Enfatizar el inicio o término de una acción",
    "ちゃう: forma informal de てしまいます para verbos う, つ, る",
    "じゃう: forma informal de てしまいます para verbos ぬ, む, ぶ, く, ぐ, す",
  ],

  examples: [
    TopicExample(
      example: "ドラグーンボール【を】見てしまいした", 
      translation: "Termine de ver Dragon Ball",
    ),
  
    TopicExample(
      example: "ドラグーンボール【を】終わってしまいした", 
      translation: "Termine (de ver) Dragon Ball",
    ),
    
    TopicExample(
      example: "土曜日【に】ドラグーンボール【を】終わってしまいます", 
      translation: "El sábado terminaré (de ver) Dragon Ball",
    ),
    
    TopicExample(
      example: "このお酒【を】飲みしまいますからお先にどうそう", 
      translation: "Tengo que terminar este sake, váyanse primero",
    ),
    
    TopicExample(
      example: "図書館【で】借りった本【を】電車【に】落としてしまいました", 
      translation: "He perdido (olvidado) el libro que tomé prestado de la biblioteca en el tren",
      explanation: "En el japones no se usa el 'olvide' (忘れ) si no el 'tire/cayó' (落とし) cuando algo se olvida en un lugar, ya que es como si la cosa se hubiera caído o tirado, no que la persona lo haya olvidado conscientemente.",
    ),
  ],
);