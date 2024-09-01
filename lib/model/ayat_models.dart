class AyatModels {
  final int? nomor;
  final String? text;
  final int? nomorSurah;
  final int? juz;

  const AyatModels({
    this.nomor,
    this.text,
    this.nomorSurah,
    this.juz,
  });

  factory AyatModels.fromJson(
    Map<String, dynamic> json,
  ) =>
      AyatModels(
        nomor: json['number'],
        text: json['text'],
        nomorSurah: json['numberInSurah'],
        juz: json["juz"],
      );
}
