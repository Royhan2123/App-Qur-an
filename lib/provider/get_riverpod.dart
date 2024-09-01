import 'package:app_quran/model/surah_models.dart';
import 'package:app_quran/services/surah_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_riverpod.g.dart';

@riverpod
class SurahNotifier extends _$SurahNotifier {
  @override
  Future<List<SurahModels>> build() async {
    return await SurahServices().getSurah();
  }
}
