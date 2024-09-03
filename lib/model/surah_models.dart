import 'package:app_quran/model/ayat_models.dart';

class SurahModels {
  final int? number;
  final String? nameSurah;
  final String? nameEnglishSurah;
  final String? artiAyat;
  final String? tempatTurunAyat;
  final List<AyatModels>? ayat;

  const SurahModels({
    this.artiAyat,
    this.number,
    this.nameEnglishSurah,
    this.nameSurah,
    this.tempatTurunAyat,
    this.ayat,
  });

  factory SurahModels.fromJson(Map<String, dynamic> json) {
    //ignore: avoid_print
    print(
      "Error ${json['ayahs']}",
    );
    return SurahModels(
      number: json['number'],
      artiAyat: json['englishNameTranslation'],
      nameEnglishSurah: json['englishName'],
      nameSurah: json['name'],
      tempatTurunAyat: json["revelationType"],
      ayat: (json['ayahs'] is List)
          ? (json['ayahs'] as List<dynamic>)
              .map(
                (ayah) => AyatModels.fromJson(ayah),
              )
              .toList()
          : [],
    );
  }
}
