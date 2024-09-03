
import 'package:app_quran/model/ayat_models.dart';
import 'package:app_quran/model/surah_models.dart';
import 'package:dio/dio.dart';

class SurahServices {
  final String url = 'http://api.alquran.cloud/v1/quran/edition';
  final dio = Dio();

  Future<List<SurahModels>> getSurah() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {

        List<dynamic> data = response.data['data']['surahs'];

        List<SurahModels> surahList = data.map((json) {
          return SurahModels.fromJson(json);
        }).toList();
        return surahList;
      } else {
        throw Exception("Failed to load surah data");
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<AyatModels>> getAyat(int surahNumber) async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {

        Map<String, dynamic> data = response.data['data'];

        List<dynamic> surahs = data['surahs'];

        final surah = surahs.firstWhere(
          (json) => json["number"] == surahNumber,
          orElse: () {
            return null;
          },
        );

        if (surah == null) {
          throw Exception("Surah with number $surahNumber not found");
        }

        List<dynamic> ayatData = surah['ayahs'];

        List<AyatModels> ayatList = ayatData.map((json) {
          return AyatModels.fromJson(json);
        }).toList();


        return ayatList;
      } else {
        throw Exception("Failed to load ayat data");
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
