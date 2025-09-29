import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity formaPotencial = TopicEntity(
  title: "Forma Potencial",
  subtitle: "Poder hacer algo",
  smallDescription: "Poder hacer algo en infinitivo",
  details: "Al usar el verbo en forma potencial la partícula cambia a【が】siempre y cuando se indique lo que se va a hacer",
  rule: "",

  extraData: [
    "La acción la haría YO a no ser que se especifique alguien más",
    "Forma casual: くれない？ / くれないかな？ / くれないかい？",
    "Forma muy formal: いただけますでしょうか",
    "Forma muy formal negativa: いただけませんでしょうか",
  ],

  examples: [
    TopicExample(
      example: "薬を買っていただけませんか。", 
      translation: "¿No quieres que yo compre la medicina?",
      explanation: "En esta oración, la persona se esta ofreciendo de forma educada  para comprar la medicina.",
    ),
    
    TopicExample(
      example: "もう一度説明していただけませんか。", 
      translation: "¿Podrías explicarlo una vez más, por favor?",
      explanation: "Aquí, la persona está haciendo una petición educada para que alguien explique algo nuevamente.",
    ),
  ],
);