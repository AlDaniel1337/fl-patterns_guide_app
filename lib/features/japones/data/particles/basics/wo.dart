import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleWo = [
  
  ParticleData(
    usage: "Para acciones",
    examples: [
      ParticleExample(
        example: "猫【は】魚【を】食べます", 
        translation: "El gato come pescado",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Objeto directo de la acción",
    examples: [
      ParticleExample(
        example: "本【を】読みます", 
        translation: "Leo un libro",
      ),
      ParticleExample(
        example: "映画【を】見ます", 
        translation: "Veo una película",
      ),
    ],
  ),
  
  ParticleData(
    isImportant: true,
    usage: "Cuando la acción no termina o es muy prolongada",
    examples: [
      ParticleExample(
        example: "猫【は】ネズミ【を】見ると", 
        translation: "Cuando el gato ve al ratón...",
        note: "Esta acción no termina pues el gato seguirá viendo al ratón a lo largo de la vida del gato.",
        noteColor: Colors.red
      ),
    ],
  ),
  
  ParticleData(
    usage: "Punto de salida / inicio de acción",
    examples: [
      ParticleExample(
        example: "駅【を】出ます", 
        translation: "Salgo de la estación",
      ),
      ParticleExample(
        example: "会社【を】辞めます", 
        translation: "Renuncio a la compañía",
      ),
    ],
  ),

  ParticleData(
    usage:  "Para verbos que incluyan un recorrido \n"
            "Caminar, correr, pasear, cruzar, etc. \n"
            "El lugar se pone con を",
    examples: [
      ParticleExample(
        example: "公園【を】散歩します", 
        translation: "Paseo por el parque",
      ),
      ParticleExample(
        example: "廊下【を】走ってはいけません", 
        translation: "No se debe correr por el pasillo",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Objeto afectado por la acción (no siempre físico)",
    examples: [
      ParticleExample(
        example: "歌【を】歌います", 
        translation: "Canto una canción",
      ),
    ],
  ),
 
  ParticleData(
    isImportant: true,
    usage:  "Para verbos de movimiento que impliquen un cambio de estado \n"
            "Salir de una escuela",
    examples: [
      ParticleExample(
        example: "大学【を】卒業します", 
        translation: "Salir de la universidad (graduarse)",
        note: "Esta acción implica completar un ciclo (educativo).",
      ),
    ],
  ),

];
