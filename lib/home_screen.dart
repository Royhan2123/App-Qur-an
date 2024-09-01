import 'package:app_quran/provider/get_riverpod.dart';
import 'package:app_quran/widget/card_surah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final surahListAsycnValue = ref.watch(
      surahNotifierProvider,
    );
    return Scaffold(
      body: surahListAsycnValue.when(
        data: (surahList) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              children: [
                ...surahList.map(
                  (surah) => CardSurah(
                    surah: surah,
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
    );
  }
}
