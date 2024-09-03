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
      return surahList;
    } catch (e) {
      throw e.toString();
    }
  }
}

@riverpod
class AyatNotifier extends _$AyatNotifier {
  @override
  Future<List<AyatModels>> build(
    int surahNumber,
  ) async {
    try {
      final ayatList = await SurahServices().getAyat(
        surahNumber,
      );
      return ayatList;
    } catch (e) {
      throw e.toString();
    }
  }
}
