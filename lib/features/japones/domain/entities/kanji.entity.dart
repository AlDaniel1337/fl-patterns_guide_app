class KanjiEntity {
  final String kanji;
  final String romanji;
  final String enMeaning;
  final String esMeaning;
  final String frMeaning;
  final List<String> onyomi;   // lectura china
  final List<String> kunyomi;  // lectura japonesa

  KanjiEntity({
    required this.kanji,
    required this.romanji,
    required this.enMeaning,
    required this.esMeaning,
    required this.frMeaning,
    this.onyomi = const [],
    this.kunyomi = const [],
  });
}