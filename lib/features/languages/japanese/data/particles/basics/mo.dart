import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleMo = [
  
  ParticleData(
    usage: "También, además, incluso",
    examples: [
      ParticleExample(
        example: "私【も】学生です", 
        translation: "Yo también soy estudiante",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Negación inclusiva: 'tampoco'",
    examples: [
      ParticleExample(
        example: "私【は】肉【を】食べません。魚【も】食べません", 
        translation: "No como carne. Tampoco como pescado",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Cantidad / énfasis: 'hasta / incluso'",
    examples: [
      ParticleExample(
        example: "一人【で】三人分【も】食べました", 
        translation: "Comí la cantidad de tres personas yo solo",
      ),
      ParticleExample(
        example: "一日【に】五時間【も】勉強しました", 
        translation: "Estudié hasta cinco horas al día",
      ),
      ParticleExample(
        example: "千円【も】かかりました", 
        translation: "Costó hasta mil yenes",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Con expresiones negativas: 'ni siquiera'",
    examples: [
      ParticleExample(
        example: "一人【も】来ませんでした", 
        translation: "No vino ni una sola persona",
      ),
      ParticleExample(
        example: "一分【も】待てません", 
        translation: "No puedo esperar ni un minuto",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Con palabras interrogativas: 'todos / ninguno'",
    examples: [
      ParticleExample(
        example: "誰【も】来ませんでした", 
        translation: "No vino nadie",
      ),
      ParticleExample(
        example: "何【も】知りません", 
        translation: "No sé nada",
      ),
    ],
  ),

];
