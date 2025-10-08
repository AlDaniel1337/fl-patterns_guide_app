import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/answers.entity.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity listados = TopicEntity(
  icon: Icons.list,
  title: "て, と, や, たり",
  subtitle: "Listar",
  smallDescription: "",
  details: "",
  rule: "",
  examples: [],
  similarTopics: [tedeListado, toListado, yaListado, tariListado],
);

TopicEntity tedeListado = TopicEntity(
  icon: Icons.list,
  title: "て, で",
  subtitle: "Listar acciones",
  smallDescription: "Listar acciones y adjetivos",
  details: "Usamos て, で para listar objetos, acciones y adjetivos.",
  rule: "Verbo en forma て / で",
  examples: [
    TopicExample(
      example: "本を読んで，音楽を聞いて，テレビを見ます。",
      exampleWithHighlight: ["で", "て"],
      translation: "Leo un libro, escucho música y veo la televisión",
    ),
  ],
);


TopicEntity toListado = TopicEntity(
  icon: Icons.list,
  title: "と",
  subtitle: "Listar objetos",
  smallDescription: "Listar objetos",
  details: "Usamos と para listar objetos.",
  rule: "Sustantivo + と + Sustantivo",
  examples: [
    TopicExample(
      example: "本とペンとノートがあります。",
      exampleWithHighlight: ["と"],
      translation: "Hay un libro, un bolígrafo y un cuaderno",
    ),
  ],
);


TopicEntity yaListado = TopicEntity(
  icon: Icons.list,
  title: "や",
  subtitle: "Listar objetos",
  smallDescription: "Listar objetos importantes",
  details: "Usamos や para listar objetos de manera no exhaustiva.",
  rule: "Sustantivo + や + Sustantivo",
  examples: [
    TopicExample(
      example: "本やペンやノートがあります。",
      exampleWithHighlight: ["や"],
      translation: "Hay un libro, un bolígrafo, un cuaderno, entre otras cosas",
      explanation: "Aquí, や se usa para indicar que hay un libro, un bolígrafo y un cuaderno, pero también puede haber otros objetos.",
    ),
  ],
);


TopicEntity tariListado = TopicEntity(
  icon: Icons.list,
  title: "たり, だり",
  subtitle: "Listar acciones (adjetivos)",
  smallDescription: "Listar acciones o estados (adjetivos)",
  details: "Usamos たり para listar acciones o estados.",
  rule: "Verbo en forma た + り",
  considerations: [
    "Enfatizar acciones",
    "Si son mas de 3 acciones se utiliza la forma て"
  ],
  examples: [
    TopicExample(
      example: "日本の㏅を聞いたり，テレビを見たりして，日本語を覚えました.", 
      exampleWithHighlight: ["だり", "たり"],
      translation: "Mientras escucho un cd de Japón y veo la televisión, recuerdo japones",
      posibleAnswers: [
        AnswersEntity(
          answer: "日本の㏅を聞いたり",
          translation: "Escuchando cd de Japón,",
        ),
        AnswersEntity(
          answer: "テレビを見たりして",
          translation: "Viendo la televisión",
        ),
        AnswersEntity(
          answer: "日本語を覚えました",
          translation: "Recuerdo el japones",
        ),
      ],
    )
  ],
);
