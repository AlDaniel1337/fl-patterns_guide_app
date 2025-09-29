import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;


class MinnaNoNihongoBookMapper {
  const MinnaNoNihongoBookMapper();

  Future<String> loadJsonAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<List<UnitVocabularie>> mapUnitsVocabularie( Map<String, dynamic> unit ) async {
    
    String jsonString = await loadJsonAsset('assets/japones/kanji/minna_no_nihongo_book/unit$unit.json');
    Map<String, dynamic> currentUnit = jsonDecode(jsonString);
    
    final List<UnitVocabularie> vocabularie = [];
    
    currentUnit.forEach( (word, content){
      vocabularie.add(UnitVocabularie(
        word: word,
        variants: List<String>.from(content['variants'] ?? []),
        romaji: content['romaji'] ?? '',
        onyomi: content['onyomi'] ?? '',
        kunyomi: content['kunyomi'] ?? '',
        es: content['es'] ?? '',
        en: content['en'] ?? '',
        fr: content['fr'] ?? '',
        de: content['de'] ?? '',
        it: content['it'] ?? '',
        pt: content['pt'] ?? '',
        kr: KoreanTranslation(
          hangul: content['kr']?['hangul'] ?? '',
          romanization: content['kr']?['romanization'] ?? '',
        ),
        ru: RussianTranslation(
          word: content['ru']?['word'] ?? '',
          transcription: content['ru']?['transcription'] ?? '',
        ),
        ch: ChineseTranslation(
          traditional: content['ch']?['traditional'] ?? '',
          simplified: content['ch']?['simplified'] ?? '',
          pinyin: content['ch']?['pinyin'] ?? '',
        ),
      ));
    });

    return vocabularie;
  }
}

class UnitVocabularie{
  final String word;
  final List<String> variants;
  final String romaji;
  final String onyomi;
  final String kunyomi;
  final String es;
  final String en;
  final String fr;
  final String de;
  final String it;
  final String pt;
  final KoreanTranslation kr;
  final RussianTranslation ru;
  final ChineseTranslation ch;

  UnitVocabularie({
    required this.word,
    required this.variants,
    required this.romaji,
    required this.onyomi,
    required this.kunyomi,
    required this.es,
    required this.en,
    required this.fr,
    required this.de,
    required this.it,
    required this.pt,
    required this.kr,
    required this.ru,
    required this.ch,
  });
}

class KoreanTranslation{
  final String hangul;
  final String romanization;

  KoreanTranslation({
    required this.hangul,
    required this.romanization,
  });
}

class RussianTranslation{
  final String word;
  final String transcription;

  RussianTranslation({
    required this.word,
    required this.transcription,
  });
}

class ChineseTranslation{
  final String traditional;
  final String simplified;
  final String pinyin;

  ChineseTranslation({
    required this.traditional,
    required this.simplified,
    required this.pinyin,
  });
}