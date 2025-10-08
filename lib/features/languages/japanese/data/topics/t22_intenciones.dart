import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity intenciones = TopicEntity(
  title: "Intenciones",
  subtitle: "Expresar intenciones y planes futuros",
  smallDescription: "",
  details: "",
  rule: "",
  examples: [],
  similarTopics: [yotei, tsumori, formaVolitiva],
);

TopicEntity yotei = TopicEntity(
  title: "よてい - 予定",
  subtitle: "Planes y preparativos",
  smallDescription: "Expresar planes y preparativos futuros.",
  details: "Se usa para indicar planes o preparativos que se han hecho para el futuro.",
  rule: "Con planes: 【の】 + よてい\n"
        "Con preparativos: Forma る + よてい",
  considerations: [
    "Con planes:【の】 + よてい -> Indica que se ha hecho un plan para una acción futura.",
    "Con preparativos: Forma る + よてい -> Indica que se han hecho preparativos para una acción futura.",
    "En japones los planes NO se pueden usar en negativo, la única forma es separándolo, por una pausa prolongada, o usando otras expresiones como つもり"
    "\n\t\t ＊ 『O』➞ 新し靴買うは...よてい【が】ない"
    "\n\t\t ＊ 『X』➞ 新し靴買うはないよてい",
  ],

  examples: [
    TopicExample(
      example: "来月，日本【へ】行く予定です", 
      translation: "El próximo mes, tengo planes de ir a Japón.",
    ),
    TopicExample(
      example: "明日，友達【と】会う予定です", 
      translation: "Mañana, tengo planes de reunirme con un amigo.",
    ),
    TopicExample(
      example: "週末，旅行する予定です", 
      translation: "El fin de semana, tengo planes de viajar.",
    ),
    TopicExample(
      example: "クラス【は】1時間【の】よていです", 
      translation: "La clase está planeada para que dure una hora.",
    ),
  ],
);



TopicEntity tsumori = TopicEntity(
  title: "つもり",
  subtitle: "Intención o plan",
  smallDescription: "Expresar intención de hacer algo.",
  details: "Se usa para indicar la intención o el plan de realizar una acción en el futuro.",
  rule: "Forma る + つもり → Tengo la intención \n"
        "Forma ない + つもり → No tengo la intención " ,

  examples: [
    TopicExample(
      example: "食事してから，アイスクリム【を】食べるつもりです", 
      translation: "Después de comer tengo la intención de comer helado",
    ),
    TopicExample(
      example: " 食事してから，アイスクリム【を】食べないつもりです", 
      translation: "Después de comer no tengo la intención de comer helado",
    ),
  ],
);



TopicEntity formaVolitiva = TopicEntity(
  title: "Forma volitiva",
  subtitle: "Propuesta o intención",
  smallDescription: "Expresar propuestas o intenciones de hacer algo.",
  details: "Se usa para hacer propuestas o expresar la intención de realizar una acción.",
  rule: "Palabra en su equivalente お + う",
  considerations: [
    "Equivalente a el ましょう",
    "La pronunciacion es alargada, sin acentos",
    "Con la terminación ましょうか se da a entender que la acción la hare yo por sugerencia propia, mientras que con la forma volitiva se da a entender que la acción la haremos los dos"
    "\n\t\t ＊ 行きましょうか ➞ No quieres que yo vaya?"
    "\n\t\t ＊ 行こうか ➞ Nos vamos?"
  ],

  examples: [
  ],

  groups: [
    TopicGroup(
      groupName: "Grupo 1",
      groupDescription: "Sonido い cambia a  お + う",
      example: "行きます → 行こう (Vamos)",
      details: [
        "Cambia a su equivalente en sonido お y se le agrega う",
        "き → こう",
        "り → ろう",
        "ち → とう",
        "ひ → ほう",
      ],
    ),

    TopicGroup(
      groupName: "Grupo 2",
      groupDescription: "Sonido え +  よう",
      example: "食べます → 食べよう (Comamos)",
      details: [
        "Se le agrega よう a la forma る del verbo",
        "Se quita el ます y se agrega よう",
        "食べます → 食べよう",
        "見ます → 見よう",
        "起きます → 起きよう",
      ],
    ),

    TopicGroup(
      groupName: "Grupo 3",
      groupDescription: "Verbos irregulares y excepciones",
      example: "します → しよう (Hagamos)",
      details: [
        "する → しよう",
        "来る → 来よう (こよう)",
        "起きます ➞ 起きよう",
        "あります ➞ ありよう",
        "浴びます ➞ 浴びよう",
        "足ります ➞ 足りよう",
        "見ます ➞ 見よう",
        "できます ➞ できよう",
        "買います ➞ 買いよう",
        "着ます ➞ 着よう",
      ],
    ),
    
    TopicGroup(
      groupName: "Preguntas y Negaciones",
      groupDescription: "Formas para hacer preguntas y negaciones",
      example: "行こうか ➞ Nos vamos?",
      details: [
        "Para hacer una pregunta se le agrega か al final de la forma volitiva",
        "Para hacer una negación se usa la forma volitiva + と思いません",
        "行こうか ➞ Nos vamos?",
        "行こうと思いません ➞ No tengo la intención de ir",
      ],
    ),
  ],
);