class GeetaModel {
  int? Chapter;
  ChapterName? chapterName;
  List<Verses>? verses;

  GeetaModel({
    required this.Chapter,
    required this.chapterName,
    required this.verses,
  });

  factory GeetaModel.fromJson(Map m1) {
    return GeetaModel(
      Chapter: m1['Chapter'],
      chapterName: ChapterName.fromJson(m1['ChapterName']),
      verses: (m1['Verses'] as List)
          .map(
            (e) => Verses.fromJson(e),
          )
          .toList(),
    );
  }
}

class ChapterName {
  String? Hindi, English, Gujarati, Sanskrit;

  ChapterName({
    required this.Hindi,
    required this.English,
    required this.Gujarati,
    required this.Sanskrit,
  });

  factory ChapterName.fromJson(Map m1) {
    return ChapterName(
      Hindi: m1['Hindi'],
      English: m1['English'],
      Gujarati: m1['Gujarati'],
      Sanskrit: m1['Sanskrit'],
    );
  }
}

class Verses {
  int? VerseNumber;
  Text? text;

  Verses({
    required this.VerseNumber,
    required this.text,
  });

  factory Verses.fromJson(Map m1) {
    return Verses(
      VerseNumber: m1['VerseNumber'],
      text: Text.fromJson(m1['Text']),
    );
  }
}

class Text {
  String? Sanskrit, Hindi, Gujarati, English;

  Text({
    required this.Sanskrit,
    required this.Hindi,
    required this.Gujarati,
    required this.English,
  });

  factory Text.fromJson(Map m1) {
    return Text(
      Sanskrit: m1['Sanskrit'],
      Hindi: m1['Hindi'],
      Gujarati: m1['Gujarati'],
      English: m1['English'],
    );
  }
}
