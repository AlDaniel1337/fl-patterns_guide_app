import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleHa = [
  ParticleData(
    usage: "Indica el tema de la oración (contraste o de qué se habla).",
    examples: [
      ParticleExample(
        example: "牛【は】", 
        translation: "Se habla de la vaca.",
        note: "Aquí, 'は' indica que la oración trata sobre la vaca.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Para presentar el tema de la oración",
    examples: [
      ParticleExample(
        example: "私【は】学生です。", 
        translation: "Yo soy estudiante.",
        note: "Aquí, 'は' indica que la oración trata sobre mí.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Para marcar contraste explícito",
    examples: [
      ParticleExample(
        example: "肉【は】食べます【が】、魚【は】食べません。", 
        translation: "Como carne, pero no como pescado.",
        note: "Aquí は se usa para oponer dos cosas.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Para señalar información conocida",
    examples: [
      ParticleExample(
        example: "天気【は】どうですか。", 
        translation: "¿Cómo está el clima?",
        note: "El clima ya es algo conocido o evidente, así que は marca el tema.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Indicar un hecho o algo que generalmente es 'cierto'",
    examples: [
      ParticleExample(
        example: "猫【は】魚【を】食べます。", 
        translation: "Los gatos comen pescado.",
        note: "Aquí は se usa para indicar un hecho general sobre los gatos.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Doble 【は】 Enfatiza de que se va a hablar de un tema en particular",
    examples: [
      ParticleExample(
        example: "猫【は】魚【は】食べます。", 
        translation: "En cuanto a los gatos, comen pescado",
        note: "Aquí se usa は dos veces para enfatizar que el tema es 'gatos' y el subtema es 'pescado'.",
        noteColor: Colors.redAccent,
      ),
    ],
  ),
  
  ParticleData(
    usage: "Doble 【は】 Enfatiza lo negativo, depende del contexto",
    examples: [
      ParticleExample(
        example: "イガド【は】食べません。", 
        translation: "No como hígado.",
        note: "Aquí se usa は para enfatizar que no se come hígado, posiblemente contrastándolo con otros alimentos que sí se comen.",
        noteColor: Colors.redAccent,
      ),
      ParticleExample(
        example: "ひらがな【は】書けますが，漢字【は】書けません。", 
        translation: "Puedo escribir hiragana, pero no puedo escribir kanji.",
        note: "Aquí se usa は para contrastar las habilidades de escritura en hiragana y kanji.",
      ),
    ],
  ),

];