import 'package:app_quran/provider/get_riverpod.dart';
import 'package:app_quran/widget/card_ayat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AyatScreen extends ConsumerWidget {
  final int surahNumber;
  const AyatScreen({
    super.key,
    required this.surahNumber,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final ayatListAsyncValue = ref.watch(
      ayatNotifierProvider(
        surahNumber,
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: ayatListAsyncValue.when(
        data: (ayatlist) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              children: [
                ...ayatlist.map(
                  (ayat) => CardAyat(
                    ayat: ayat,
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Center(
          child: Text("Error: $error"),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      ),
    );
  }
}
