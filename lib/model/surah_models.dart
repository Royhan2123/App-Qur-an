class SurahModels {
  final int? number;
  final String? nameSurah;
  final String? nameEnglishSurah;
  final String? artiAyat;
  final int? jumlahAyat;
  final String? tempatTurunAyat;

  const SurahModels({
    this.artiAyat,
    this.number,
    this.nameEnglishSurah,
    this.nameSurah,
    this.jumlahAyat,
    this.tempatTurunAyat,
  });

  factory SurahModels.fromJson(Map<String, dynamic> json) => SurahModels(
        number: json['number'],
        artiAyat:  json['englishNameTranslation'],
        nameEnglishSurah: json['englishName'],
        nameSurah: json['name'],
        jumlahAyat: json['numberOfAyahs'],
        tempatTurunAyat: json["revelationType"],
      );
}
