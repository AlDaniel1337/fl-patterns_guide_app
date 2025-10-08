import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity formaImperativa = TopicEntity(
  icon: Icons.gavel,
  title: "Forma Imperativa",
  subtitle: "Dar órdenes.",
  smallDescription: "Dar órdenes de manera directa.",
  details: "La forma imperativa se utiliza para dar órdenes o instrucciones directas.",
  rule: "い cambia a え, な se le agrega ろ",
  considerations: [
    "La diferencia entre la forma potencial, es que la potencial lleva el ます al final.",
  ],

  examples: [
    TopicExample(
      example: "食べろ。", 
      translation: "¡Come!",
    ),
  ],

  groups: [
    TopicGroup(
      groupName: "Grupo 1",
      groupDescription: "Sonido い cambia a え sin ます",
      example: "書きます → 書け",
      details: [
        "Sonido い cambia a え",
        "No se usa ます",
        "い → え, り → れ",
        "ち → て, ひ → へ",
        "び → べ, み → め",
        "き → け, ぎ → げ",
        "し → せ, に → ね",
      ],
    ),

    TopicGroup(
      groupName: "Grupo 2",
      groupDescription: "Sonido え + ろ",
      details: [
        "食べます → 食べろ",
        "見ます → 見ろ",
        "起きます → 起きろ",
        "寝ます → 寝ろ",
        "着ます → 着ろ",
        "教えます → 教えろ",
        "借ります → 借りろ",
      ],
      example: ""
    ),

    TopicGroup(
      groupName: "Grupo 3",
      groupDescription: "Irregulares y excepciones",
      details: [
        "します ➞ しろ",
        "来ます ➞ 来い",
        "行きます ➞ 行け",
        "起きます ➞ 起きろ!",
        "あります ➞ ありろ!",
        "浴びます ➞ 浴びろ!",
        "足ります ➞ 足りろ!",
        "できます ➞ できろ!",
        "買います ➞ 買いろ!",
        "見ます ➞ 見ろ!",
        "着ます ➞ 着ろ!"
      ],
      example: ""
    ),
  ]
);