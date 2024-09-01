import 'package:app_quran/model/surah_models.dart';
import 'package:dio/dio.dart';

class SurahServices {
  final String url = 'http://api.alquran.cloud/v1';
  final dio = Dio();

  Future<List<SurahModels>> getSurah() async {
    try {
      final response = await dio.get(
        "$url/surah",
      );

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];

        List<SurahModels> surahList = data.map((json) {
          return SurahModels.fromJson(
            json,
          );
        }).toList();
        return surahList;
      } else {
        throw Exception(
          "Failed to load surah data",
        );
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
