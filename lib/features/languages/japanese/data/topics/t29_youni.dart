import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity youni = TopicEntity(
  icon: Icons.access_time_filled,
  title: "ように",
  subtitle: "Para...",
  smallDescription: "Realizar acciones con la intención de que algo suceda.",
  details: "Se utiliza para expresar el propósito o la intención de una acción, indicando que se realiza con la esperanza de que ocurra algo.",
  rule: "Forma diccionario + ように, Forma ない + ように",
  considerations: [
    "ように ➞ Para",
    "ようになります ➞ Ser capaz",
    "ようにしています ➞ Trato de",
    "のような ➞ Como (Comparación objetos, personas, etc.)",
    "のように ➞ Como (Comparación acciones)",
  ],

  examples: [
    TopicExample(
      example: "忘れないように，付けてあるんです。", 
      translation: "PARA no olvidarlo, remárcalo.",
    ),
    TopicExample(
      example: "遅れないように，早く起きてね。", 
      translation: "PARA no llegar tarde, despiértate temprano.",
    ),
    TopicExample(
      example: "漢字【が】書けるように，毎日練習して", 
      translation: "PARA poder escribir kanji, practica todos los días",
    ),
    TopicExample(
      example: "毎日練習すれば，もうすぐ話せるようになるよ。", 
      translation: "Si practicas todos los días, pronto podrás hablarlo.",
    ),
    TopicExample(
      example: "嫌いでも，野菜を食べるようにしています。", 
      translation: "Anqué no me gusten, TRATO de comer verduras.",
    ),
    TopicExample(
      example: "嫌いでも，野菜を食べるようにしてください。", 
      translation: "Anqué no te gusten, TRATA de comer verduras.",
    ),
    TopicExample(
      example: "忘れないように，付けてあるんです",
      translation: "PARA no olvidarlo, remárcalo",
    ),
    TopicExample(
      example: "毎日日本語を勉強すれば，話せるようになります",
      translation: "Si estudio japones todos los días, SERÉ CAPAS de hablarlo",
    ),
    TopicExample(
      example: "貯金するために，ゲームは買わないようにしています",
      translation: "Para ahorrar dinero, TRATO de no comprar juegos",
    ),
    TopicExample(
      example: "東京のような町が好きです",
      translation: "Me gustan las ciudades COMO tokyos",
    ),
    TopicExample(
      example: "あなたのような人が好きです",
      translation: "Me gustan las personas COMO tu",
    ),
    TopicExample(
      example: "あなたは魚のように泳げます",
      translation: "Puedes nadar COMO pez",
    ),
    TopicExample(
      example: "あなたは花のようにきれいです",
      translation: "Eres tan bonita COMO una flor",
    ),
  ],

);