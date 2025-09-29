import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity yotei = TopicEntity(
  title: "よてい - 予定",
  subtitle: "Planes y preparativos",
  smallDescription: "Expresar planes y preparativos futuros.",
  details: "Se usa para indicar planes o preparativos que se han hecho para el futuro.",
  rule: "Con planes: 【の】 + よてい\n"
    "Con preparativos: Forma る + よてい",
  extraData: [
    "よてい puede usarse tanto para planes personales como para eventos organizados.",
    "La partícula 【の】 se utiliza para conectar sustantivos con よてい, mientras que la forma る se usa con verbos.",
    "よてい enfatiza la intención o el plan de realizar una acción en el futuro.",
    "Es común usar よてい en contextos formales e informales.",
    "En japones los planes NO se pueden usar en negativo, la única forma es separándolo, por una pausa prolongada"
    "\n\t✅ 新し靴買うは．．．よてい【が】ない"
    "\n\t❌ 新し靴買うはないよてい"
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
  rule: "",
  extraData: [
    "Equivalente a el ましょう",
    "La pronunciacion es alargada, sin acentos",
  ],

  examples: [
  ],
);