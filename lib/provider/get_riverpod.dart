// ignore_for_file: avoid_print

import 'package:app_quran/model/ayat_models.dart';
import 'package:app_quran/model/surah_models.dart';
import 'package:app_quran/services/surah_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_riverpod.g.dart';

@riverpod
class SurahNotifier extends _$SurahNotifier {
  @override
  Future<List<SurahModels>> build() async {
    try {
      final surahList = await SurahServices().getSurah();
      print("SurahNotifier: Fetched surah list: $surahList");
      return surahList;
    } catch (e) {
      print("SurahNotifier Error: $e");
      throw e.toString();
    }
  }
}

@riverpod
class AyatNotifier extends _$AyatNotifier {
  @override
  Future<List<AyatModels>> build(int surahNumber) async {
    try {
      final ayatList = await SurahServices().getAyat(surahNumber);
      print("AyatNotifier: Fetched ayat list for surah number $surahNumber: $ayatList");
      return ayatList;
    } catch (e) {
      print("AyatNotifier Error: $e");
      throw e.toString();
    }
  }
}
