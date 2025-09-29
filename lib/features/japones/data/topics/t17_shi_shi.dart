import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity shishi = TopicEntity(
  title: "し～し～",
  subtitle: "Enfatizar",
  smallDescription: "Enfatizar características",
  details: "Enfatiza las características o cualidades de algo o alguien, o para enumerar múltiples razones o causas.",
  rule: "Forma る + し, Forma た + し, Forma ない + し, Sustantivo + し, Adjetivo【い】+ し, Adjetivo【な】+ だ + し",
  
  extraData: [
    "La diferencia con el て es como si se tuvierá un lista en la mano enlistando las acciones o caracteristicas,",
    "Para todas las oraciones se usa el も",
    "Cada dos (máximo 4) agregar un それに para no sonar tan plano",
  ],

  examples: [
    TopicExample(
      example: "彼女【も】綺麗だし，歌えるし，ダンス【も】上手だし", 
      translation: "Ella es bonita, puede cantar y también es buena bailando",
    ),
    TopicExample(
      example: "このレストランは安いし，美味しいし，店員さんも親切だし", 
      translation: "Este restaurante es barato, delicioso y los camareros son amables",
    ),
    TopicExample(
      example: "この映画は面白いし，感動的だし，音楽も素晴らしいし", 
      translation: "Esta película es interesante, conmovedora y la música también es maravillosa",
    ),
  ],
);