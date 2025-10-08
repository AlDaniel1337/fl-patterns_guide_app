import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity formaPotencial = TopicEntity(
  icon: Icons.school_rounded,
  title: "Forma Potencial",
  subtitle: "Poder hacer algo",
  smallDescription: "Indica la capacidad o posibilidad de realizar una acción.",
  details: "Indica la capacidad o posibilidad de realizar una acción.",
  rule: "Verbo en forma potencial",

  considerations: [
    "Al usar el verbo en forma potencial la partícula cambia a【が】siempre y cuando se indique lo que se va a hacer",
    "Utilizando【は】indica 'que/quien hace que'",
    "Utilizando【が】indica 'que/quien quiere hacer que'",
    "Utilizando【を】indica 'poder hacer algo'",
    "Utilizando【に】indica 'poder ir a algún lugar'",
    "Utilizando【へ】indica 'poder ir a algún lugar'",
    "Utilizando【で】indica 'poder hacer algo en un lugar'",
  ],

  examples: [
    TopicExample(
      example: "教室【を】いらきます", 
      translation: "Se abrió la clase.",
      explanation: "を + いらきます se usa para indicar que la clase HA SIDO abierta."
    ),
    
    TopicExample(
      example: "教室【は】いらけますか", 
      translation: "Se podrá abrir la clase de cocina?",
      explanation: "は + いらけますか se usa para preguntar SI ES POSIBLE abrir la clase."
    ),
   
    TopicExample(
      example: "教室【が】いらけます", 
      translation: "YO podre abrir la clase",
      explanation: "が + いらけます se usa para indicar que YO PODRÉ abrir la clase."
    ),
  ],

  groups: [
    TopicGroup(
      groupName: "Grupo 1",
      groupDescription: "Sonido い cambian a え",
      example: "泳ぎます → 泳げます",
      details: [
        "い → え, り → れ",
        "ち → て, ひ → へ",
        "び → べ, み → め",
        "き → け, ぎ → げ",
        "し → せ, に → ね",
      ],
    ),
    
    TopicGroup(
      groupName: "Grupo 2",
      groupDescription: "Sonido え + られます",
      example: "食べます → 食べられます",
      details: [
        "え → え + られます",
      ],
    ),

    TopicGroup(
      groupName: "Grupo 3",
      groupDescription: "Verbos irregulares",
      example: "する -> できる",
      details: [
        "します → できます",
        "来ます → 来られます",
        "見ます → 見えます (Poder ver con. (Ojos))",
        "見ます → 見られます (Poder ver en algo. Tv, celular, internet)",
        "聞きます → 聞けます (Poder escuchar con un medio. (Aparato))",
        "聞きます → 聞こえます (Poder escuchar con. (Oídos))",
      ],
    ),
  ],


);