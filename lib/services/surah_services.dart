// ignore_for_file: avoid_print

import 'package:app_quran/model/ayat_models.dart';
import 'package:app_quran/model/surah_models.dart';
import 'package:dio/dio.dart';

class SurahServices {
  final String url = 'http://api.alquran.cloud/v1/quran/edition';
  final dio = Dio();

Future<List<SurahModels>> getSurah() async {
  try {
    final response = await dio.get(url);

    print("Response status code (getSurah): ${response.statusCode}");
    print("Full Response data (getSurah): ${response.data}");

    if (response.statusCode == 200) {
      // Print the specific data section we are interested in
      print("Data section (getSurah): ${response.data['data']}");
      print("Surahs section (getSurah): ${response.data['data']['surahs']}");

      // Ensure we are accessing the 'surahs' list correctly
      List<dynamic> data = response.data['data']['surahs'];

      List<SurahModels> surahList = data.map((json) {
        return SurahModels.fromJson(json);
      }).toList();

      print("Surah list successfully parsed: $surahList");

      return surahList;
    } else {
      throw Exception("Failed to load surah data");
    }
  } catch (e) {
    print("Error in getSurah: $e");
    throw e.toString();
  }
}
  Future<List<AyatModels>> getAyat(int surahNumber) async {
    try {
      final response = await dio.get(url);

      print("Response status code (getAyat): ${response.statusCode}");
      print("Response data (getAyat): ${response.data}");

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];

        final surah = data.firstWhere(
          (json) => json["number"] == surahNumber,
          orElse: () {
            print("Surah with number $surahNumber not found");
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

        print("Ayat list successfully parsed: $ayatList");

        return ayatList;
      } else {
        throw Exception("Failed to load ayat data");
      }
    } catch (e) {
      print("Error in getAyat: $e");
      throw e.toString();
    }
  }
}
