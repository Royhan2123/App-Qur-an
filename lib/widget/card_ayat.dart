import 'package:app_quran/model/ayat_models.dart';
import 'package:app_quran/style/stylesheet.dart';
import 'package:flutter/material.dart';

class CardAyat extends StatelessWidget {
  final AyatModels ayat;
  const CardAyat({
    required this.ayat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        10,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            ayat.text!,
            style: txtBlack3,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    ayat.nomorSurah.toString(),
                    style: txtBlack2,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                ayat.nomorSurah.toString(),
                style: txtBlack3,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Juz:",
                style: txtBlack2,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                ayat.juz.toString(),
                style: txtBlack,
              ),
            ],
          )
        ],
      ),
    );
  }
}
