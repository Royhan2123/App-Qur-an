import 'package:app_quran/model/surah_models.dart';
import 'package:app_quran/style/stylesheet.dart';
import 'package:app_quran/ayat_screen.dart';
import 'package:flutter/material.dart';

class CardSurah extends StatelessWidget {
  final SurahModels surah;
  const CardSurah({
    super.key,
    required this.surah,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AyatScreen(
            surahNumber: surah.number!,
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 2,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      surah.number.toString(),
                      style: txtBlack2,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      surah.nameSurah!,
                      style: txtBlack3,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      surah.nameEnglishSurah!,
                      style: txtBlack2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      surah.artiAyat!,
                      style: txtBlack2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      surah.tempatTurunAyat!,
                      style: txtBlack2,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
              height: 2,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
